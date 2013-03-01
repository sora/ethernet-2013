## 作ればわかる Ethernet物理層とデータリンク層
Last update: 2013/2/23

------------

### はじめに

ちょうど1年前からFPGAで遊びはじめ，2012年夏の研究会合宿では，先輩の超強力サポートのおかげで，まるまる2日間使ってFPGA開発環境入門からEthernetとPCI Express回路設計まで突っ走るワークショップを行いました．
この文章は，そのワークショップの講義内容を作成する過程で学んだことを，スライドから文章に再構築したものです．

内容は，FPGAのHobbyユーザ向けのEthernet回路設計入門です．
実際に動くFPGAのネットワークデバイスを作ることで，Ethernetの物理層とデータリンク層を学びます．

FPGAボードは，Lattice社のECP3 versa dev kit ($299, 1000Base-T 2ポート, PCI Express x1) を使用します．
夏のワークショップでは，FPGA開発環境の使い方メインで内容を組み立てましたが，ここでは，FPGAベンダに依存するような内容は極力扱わずに，一般的なEthernet回路設計メインで進めていきます．

作成回路は，市販のIP Core (Intellectual Property Core) を使わずに，ポート0から秒間1,488,095 (Ethernet 1000BASE-T ワイヤーレード)でUDPパケットを送信し，ケーブルやスイッチングハブを経由させて，ポート1で全パケットを受信する回路です．

今回作成する回路は，ネットワークテスタ，スイッチやルータ，Middleboxといった，ネットワークデバイス開発の基礎の部分になります．
この回路を使うことで，対向リピータハブの処理遅延を8ns単位で調べたり，LANケーブルの伝搬遅延を測ることができます．
FPGAを使ったネットワークデバイス開発には，遅延，PPS，スループットなどを測る検証機が必要不可欠ですがそれらはお値段がそこそこ高いです．
今回作る回路は，ミニマム機能しかありませんが，そのような検証機の代わりの簡易デバッガーとして利用することができます．

また，最後には，回路の応用例として，CPU-lessのKVSのミニマムサンプルと，10G/100G，そして，PCI Express回路設計について，本文で扱う1000BASE-Tと対比しながら簡単に触れたいと思います．

------------

### 扱う内容

メイントピックは，FPGAではなくてEthernet回路設計の導入です．
話の導入や具体例として，FPGAで動作するVerilog-HDLのコードをベースに話をすすめます．

今回は1000BASE-Tを扱いますが，10Gだろうと，40G,100Gであっても，ユーザロジックの設計方法は大きく変わりません．

- Ethernet データリンク層と物理層
- Ethernet 1000BASE-T (全二重)
- Ethernet PHYチップの使い方
- Ethernetフレーム入門
- Ethernet 10G, PCI/PCIe回路設計の事始め

実際のFPGA開発には，HDL (Verilog-HDLやVHDL) だけでなく，論理回路設計，FPGAベンダごとの開発環境の使い方，ペリフェラルの仕様の知識が必要です．
今回の内容では，FPGAによるネットワークデバイス開発の説明に重点をおくために，固有のFPGAベンダに依存するような内容は極力除き，ネットワーク屋さんの視点からまとめてみたいと思います．
題材はFPGAと言いつつも，気持ちとしては，どんなネットワークハードウェアでも通じる，Ethernet回路設計の一般知識を扱います．

また，サンプルコードには，Verilog2001を使っています．

----------------
### 扱わない内容

* OSI参照モデルや基本的なTCP/IPの説明
* 10, 100BASE-TX
* 半二重，キャリアセンス
* MDI, PHYレジスタ
* MAC-IP coreの使い方

前提知識として，OSI参照モデルとその各層ごとの副層の仕事内容，一般的なTCP/IPの仕組みは本文中で解説していません．
また，必要に応じて，UDPやIP，Ethernetのヘッダフォーマットを参照しつつ読む必要があると思います．
自分は，ヘッダフォーマットを調べるのに[詳解TCP/IP〈Vol.2〉実装][VOL2]をリファレンスに使っていますが，古い本なので，今だともっと良い本があるかもしれません．

また，10Mや100Mは，いまさら感があるのと，コードも長くなるので扱いません．
なので，終盤にでてくる今回作る回路は，100Mのスイッチングハブなどに挿しても動きません．

また，MACの機能も最小限のみ扱います．
Ethernet PHYには，様々なPHYの状態を保持するレジスタを持っていて，MDI (Multiple Document Interface)というインタフェースを通してMACがPHYにステータスを問い合わせたり変更することができます．

今回は，MACのIP Coreを使わず，MACの最小限の機能だけをピックアップして，自分で書いた回路を使って直接PHYチップと通信します．
MDIは実装しないので，例えば，Ethernetポートのリンクアップ・ダウンの検出などはできません．

MIIやMDIの詳細は，[Ethernetのしくみとハードウェア設計技法][ETHER-BOOK]がおすすめです．
古い本なので扱っている内容が100BASE-TXですが，Ethernet回路設計本自体がほとんどないのと，基本的な仕組みは1000BASE-Tと変わらないので，今でも参考になると思います．

------------------------------------
### 1000Base-T 回路設計の戦略を立てる

ソフトウェア開発が，処理をどれだけ短くすることによって処理を高速化することに対して，FPGA開発では，1 clockの間でどれだけ処理を詰め込むかといった視点になります．

はじめに，今回は，1000BASE-Tの回路を作るので，秒間1GBのデータを入出力する回路を考えてみます．

125MHzのクロックで動く回路を考えてみます．<br>
1clockごとに8bitデータがInputされるとして，次のクロックまでにすべての処理を完了しデータをOutputできれば，125MHz * 8 bit = 秒間1GBのデータを処理できる回路 になります．
ちなみに，この125MHz, 8bitという仕様は，今回扱うEthernet 1000BASE-TのPHYとMAC間のインタフェースであるGMIIそのものです．

さらに余談ですが，これを156.25 MHzで動作してデータ入力を64 bitにすると，10GBASEの仕様であるXGMIIになります．
別の言い方をすれば，156.25 MHz, 64bitで動作する回路は，秒間10GBのデータを処理し，64bitのデータを6.4 nsで完了できます．


今回のトピックで扱うEthernet 1000BASE-Tであれば，IEEE 802.3によって仕様が規定されているので，その仕様にあるデータのIn/Outの仕様であるGMII (125MHzで1clockあたり8bitのデータを入出力する仕様であり．つまり，掛け算すれば1秒間に1000MBになります) 

また，今回はEthernetの1000BASE-Tを想定しています．
けれど，10G以降の回路設計も基本は変わりません．
さらにいえば，PCI Expressも物理層，データリンク層があって，Ethernetに近い仕様です．
今回の話が理解できれば，今後も大きく変わることのない，高速インタフェース設計の基礎が理解できます．
もう少し詳細な話題は，この文章の"Ethernet 10G, PCI/PCIe回路設計の事始め"で扱います．


-----------
### MIIとは

物理層から開発といっても，必要なのはユーザロジック側からアクセスするためのPHYのインタフェースです．
少しだけEthernetの復習をします．ポイントは，前述で少し名前がでましたが*MII*ってやつです．


    | Network layer | Data link layer |       Physical layer        |
                              … | MAC |<-- MII -->| PCS | PMA | PMD |


- MAC (Media Access Control) 
- MII (Media Independent Interface)
- PCS (Physical Coding Sublayer)
- PMA (Physical Medium Attachment)
- PMD (Physical Medium Dependent)

以上の基本的なEthernetの階層モデルに対して，
FPGAで1000BASE-Tを使うときは，以下の構成になります．


    |           FPGA          | PHY Chip | RJ-45 | LAN cable |
    | User logic, MAC-IP, MII |


-----------------------------------
### GMIIを使ってPHYチップと通信する

    // PHY cold reset (260 clock)
    reg [8:0] coldsys_rst = 0;
    wire coldsys_rst260 = (coldsys_rst == 9'd260);
    always @(posedge clock)
      coldsys_rst <= !coldsys_rst260 ? coldsys_rst + 9'd1 : 9'd260;
    assign phy1_rst_n = coldsys_rst260;

------------------
### 受信回路を作る

    // Receiver logic
    reg [7:0] rx_data [0:2047];
    always @(posedge phy1_rx_clk) begin
      if (phy1_rx_dv)
          rx_data[counter] <= phy1_rx_data;
    end
    assign led[7:0] = ~rx_data[switch];


------------------
### 送信回路を作る

    reg tx_en;
    reg [7:0] tx_data;
    reg crc_rd;
    wire crc_init = (counter == 12'h08);
    wire [31:0] crc_out;
    wire crc_data_en = ~crc_rd;
    always @(posedge phy1_125M_clk) begin
      if (reset_n == 1'b0) begin
          tx_data <= 11'h0;
          tx_en   <= 1'b0;
          crc_rd  <= 1'b0;
      end else begin
    case (counter)
      12'h00: begin
        tx_data <= 8'h55;
        tx_en   <= 1'b1;
      end
      12'h01: tx_data <= 8'h55;  // Preamble
      12'h02: tx_data <= 8'h55;
      12'h03: tx_data <= 8'h55;
      12'h04: tx_data <= 8'h55;
      12'h05: tx_data <= 8'h55;
      12'h06: tx_data <= 8'h55;
      12'h07: tx_data <= 8'hd5;  // preamble + Start Frame Delimiter


----------------------------------------
### 完成した回路の内部処理遅延を計測する

----------------------------------------
### スイッチングハブの内部遅延を計測する

-----------------------------------------
### 落ち葉拾い (L2, L3機器に対応するには)

-----------------------------------------
### 応用: 簡単なCPU-lessなKVSを作ってみる

まずは仕様を決めます．
遅延計測回路のmeasureをベースに，setとgetのみの最低限のKVSを実装してみます．

- 通信プロトコルにUDPを利用
- コマンドはsetとgetのみサポート
    * expireは対応しない
- Memcache Binary Protocol を使う
- Key length は binary: 8 byte
- Value length は binary: 32 byte
- データ保持数は16個
    * memoryはFPGA内のBRAMを利用

レポジトリは，ここにあります．
ファイルの説明です．
拡張性を考えて，必要以上にモジュールを分割しています．

- top.v
    * topモジュール．memcachebinaryprotocolを解釈
- lookup.v
    * set/getを発行
- memory.v
    * データの保存場所
- crc.v
    * 今回はhashkeyの生成にCRC32を利用


#### 10G 事始め

10Gにも色々規格がありますが，今回は光ファイバとSFP+を使った
10GBASE-Rを想定しています．

FPGAで遊ぶ際の10GBASE-Rと1000BASE-Tの大きな違いは，PHYチップの有無です．<br>
たしかに10G用のPHYチップはあるんですが，まだ多くのFPGA開発キットには搭載されていません．
最近になって，ようやく小型で消費電力の低い10G PHYが出始めてきました[10G-PHY]．
10G PHYが普及していけば，FPGAでの10Gデバイス開発の敷居が格段に下がるとおもいます．

では，10G PHYが無いのにどうするかというと，PHYの仕事をFPGA内の回路でやることになります．


--------------------------------------------
### ネットワークデバイス向けのFPGA開発ボード

おすすめできるほど，そもそも選択肢がほとんどありません．
あと，自分はXilinxとLatticeしか使ったことがないのでAlteraのことはわかりません．

**Altera DE0**

FPGA事始めには，[Altera DE0][DE0]がおすすめみたいです．<br>
ただ，Ethernetが使えないので自分は持っていません．一応，DE0は，あとから100Base-Tを拡張できるモジュールがあるみたいです．
なにより，日本人で遊んでる人が多いので，日本語のわかりやすい[書籍][DE0BOOK]が非常に充実しています．

------------
### 参考文献

FPGA開発の参考資料だけでも少ないですが，FPGA+Ethernetとなると，さらに資料がないです．
大体の資料は，FPGAベンダの資料，CQ出版の書籍，Interfaceの連載 (図書館でバックナンバを借りてくる)で勉強しました．

> この記事の原稿はGithubに[あります][MYBLOG]．

[VOL2]:        http://www.amazon.co.jp/dp/4894714957
[ETHER-BOOK]: http://www.amazon.co.jp/dp/4789833437
[ZYNQ]:        http://www.xilinx.com/products/silicon-devices/soc/zynq-7000/index.htm
[KINTEX-7]:    http://japan.xilinx.com/japan/j_prs_rls/2011/fpga/28nm-first-shipment-kintex-7-fpga.htm
[SERDES]:      http://japan.xilinx.com/products/technology/high-speed-serial/index.htm
[SR-IOV]:      http://japan.xilinx.com/japan/j_prs_rls/2012/connectivity/pcie_gen3-ddr3_memory_solution.htm
[FUSION-IO_1]: http://www.fusionio.com/white-papers/fusion-io-a-new-standard-for-enterprise-class-reliability/
[FUSION-IO_2]: http://www.storagereview.com/fusionio_iodrive_duo_review_640gb
[JDSU]:        http://www.altera.co.jp/corporate/news_room/releases/2013/products/nr-jdsu-adopts-stratixv.html
[ARISTA]:      http://www.aristanetworks.com/en/products/7100series/7124fx/
[BROCADE]:     http://www.atmarkit.co.jp/news/201205/23/brocade.html
[SIGMA]:       http://japan.xilinx.com/japan/j_prs_rls/2011/fpga/spartan-6-in-46-megapixel-digital-slr.htm
[KYOCERA]:     http://global.kyocera.com/news/2012/0501_akgu.html
[400G]:        http://www.xilinx.com/innovation/research-labs/conferences/ANCS_final.pdf
[DE0]:         http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=364
[DE0BOOK]:     http://www.amazon.co.jp/dp/4774148393/
[INTEL-FAB]:   http://news.mynavi.jp/news/2010/11/02/047/index.html
[MYBLOG]:      https://github.com/sora/myblog/blob/master/kiji/ethernet-2013.md

