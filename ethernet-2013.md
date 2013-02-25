## 作ればわかる Ethernet物理層とデータリンク層
Last update: 2013/2/17

==============================================================================

**Table of Contents**  *generated with [DocToc](http://doctoc.herokuapp.com/)*

- [FPGAで作ればわかる Ethernet物理層とデータリンク層](#fpgaで作ればわかる-ethernet物理層とデータリンク層)
 	- [はじめに](#はじめに)
	- [FPGAはデータセンタのどこで使われているのか](#fpgaはデータセンタのどこで使われているのか)
	- [扱う内容](#扱う内容)
	- [扱わない内容](#扱わない内容)
	- [1000Base-T 回路設計の戦略を立てる](#1000base-t-回路設計の戦略を立てる)
	- [MIIとは](#miiとは)
	- [GMIIを使ってPHYチップと通信する](#gmiiを使ってphyチップと通信する)
	- [送信回路を作る](#送信回路を作る)
	- [受信回路を作る](#受信回路を作る)
	- [完成した回路の内部処理遅延を計測する](#完成した回路の内部処理遅延を計測する)
	- [スイッチングハブの内部遅延を計測する](#スイッチングハブの内部遅延を計測する)
	- [落ち葉拾い (L2, L3機器に対応する)](#落ち葉拾い-l2-l3機器に対応する)
	- [(応用) 簡単なCPU-lessなKVSを作ってみる](#応用-簡単なcpu-lessなkvsを作ってみる)
		- [10G 事始め](#10g-事始め)
		- [SERDESとは](#serdesとは)
		- [通信規格のThroughputを見積もる](#通信規格のthroughputを見積もる)
		- [100G事始め](#100g事始め)
	- [ネットワークデバイス向けのFPGA開発ボード](#ネットワークデバイス向けのfpga開発ボード)
	- [参考文献](#参考文献)

==============================================================================

------------
### はじめに

ちょうど1年前からFPGAで遊びはじめ，2012年夏の研究会合宿では，先輩の超強力サポートのおかげで，まるまる2日間使ってFPGA開発環境入門からEthernetとPCI Express回路設計まで突っ走るワークショップを行いました．
この文章は，そのワークショップの講義内容を作成する過程で学んだことを，スライドから文章に再構築したものです．

内容は，ネットワーク屋さん向けのEthernet回路設計入門です．
実際に動くFPGAのネットワークデバイスを作ることで，Ethernetの物理層とデータリンク層を学びます．

FPGAボードは，Lattice社のECP3 versa dev kit ($299, 1000Base-T 2ポート, PCI Express x1) を使用します．
夏のワークショップでは，FPGA開発環境の使い方メインで内容を組み立てましたが，この文章では，FPGAベンダに依存するような内容は極力扱わずに，回路設計メインで進めていきます．

作成回路は，市販のIP Core (Intellectual Property Core) を使わずに，ポート0から秒間1,488,095 (Ethernet 1000BASE-T ワイヤーレード)でUDPパケットを送信し，ケーブルやスイッチングハブを経由させて，ポート1で全パケットを受信する回路です．

今回作成する回路は，ネットワークテスタ，スイッチやルータ，Middleboxといった，ネットワークデバイス開発の基礎の部分になります．この回路を使えば，対向リピータハブの処理遅延を8ns単位で調べたり，LANケーブルの長さを30cm単位で測ることができます．FPGAを使ったネットワークデバイス開発には，遅延，PPS，スループットなどを測る検証機が必要不可欠ですが，一般論として，それらはお値段がそこそこ高いです．今回作る回路は，ミニマム機能しかありませんが，そのような検証機の代わりの簡易デバッガーとして利用することができます．

また，最後には，回路の応用例として，CPU-lessのKVSのミニマムサンプルと，10G/100G，そして，PCI Express回路設計について，本文で扱う1000BASE-Tと対比しながら簡単に触れたいと思います．

----------------------------------------------
### FPGAはデータセンタのどこに使用されているのか，これから使用されるのか

話の導入も兼ねて，今のFPGAで何ができて，世の中のどこでFPGA使われていているのかについて，データセンタに領域を絞ってみていきます．

少し前までのFPGAの使い方は，ASICのプロトタイピングやモデル検証のために利用されていました．
その後，FPGAチップの内部リソースが大規模化し，FPGA周辺のハードIP Coreが高機能化した結果，現在では，製品の市場投入の速さが重要であったり，出荷台数が数万個の製品などで，FPGAチップをそのまま製品に利用しているケースが増えて来ました．

はじめに，いまどきのハイエンドFPGAチップの性能を確認してみます．<br>
最近のFPGAは，最新のモバイル向けCPUに匹敵する28nmプロセスで製造して[たり][ZYNQ]，チップ上にiPad miniと同程度のクラスのARMコアを搭載してい[たり][KINTEX-7]，1チップで10GBase-Rを96ポート (総帯域 2.5Tb/s) を扱えるシリアルトランシーバを搭載し[たり][SERDES]，部分的ながらSR-IOVのハードマクロが搭載され[たり][SR-IOV]します．

2013年登場のFPGAに目を向けると，新興FPGAメーカーから，Intel Fabの22nm Tri-Gateトランジスタで製造さ[れた][INTEL-FAB]ハイエンドFPGAチップと100GE CFP cage搭載の開発ボードが登場します．
これは，最大動作周波数1GHz超え！Ethernet 10/40/100GのPCSとMACのハードIP Coreを搭載！1チップで100GE 4ポート処理！User IO 960 pin！LUTが1M超え(今回使用するLatticeECP3は33K LUT)！BRAM 82 Mb！と，FPGAという名前を変えてもいいんじゃないかと思う成長を遂げています．
値段を聞くのが怖いです．

さらに製品に目を向けると，大容量のNANDフラッシュのコントローラに使われてい[た][FUSION-IO_1] [り][FUSION-IO_2]，100G向けネットワークテスタに使われてい[たり][JDSU]，バックボーンネットワーク機器に使わ[れて][ARISTA]い[たり][BROCADE]するみたいです．
これはデータセンタではありませんが，デジカメの画像処理エンジンに使われてい[たり][SIGMA]，スマホに使われてい[たり][KYOCERA]の例もあるみたいです．

一方で，データセンタにおけるFPGAの適応領域はそんなに広くありません．<br>
たしかに，ASICではモデル検証に使われています[pdf]．
ASICプロトタイプだと，例えばIntelやnvidiaでは，CPU，GPUのモデル検査していますし，Intel CPUとFPGA間をQPIで接続するトライ結果も出てきています．

しかし，多くの状況では，今時のCPUとチップセットやGPU，Linux，そして，賢いEthernet controller (またはInfiniband) の組み合わせで十分解くことができそうです．
最近のサーバ向けIntelのEthernet Controllerは，ソフトウェア支援のために，様々なマルチコア支援，Hardware Offloading機能が入ってきていて，それらによって，PPS (Packet Per Second)のボトルネックを改良しようとしています．
Intel NICを使って，ショートフレームをワイヤーレートでキャプチャなんて話があります[pdf]．

そんなFPGAですが，数少ない適応範囲では非常に強力な武器になります．
ここでは，ネットワーク機器での利用を考えてみます．

FPGAの弱点にIO数の少なさと動作周波数が低いことが挙げられますが，ここ数年の進歩でネットワーク領域におけるFPGAの問題はある程度解決されています．
例えば，後述する高速シリアルトランシーバの進化によって，100G (25G x4)マルチポート処理も十分到達可能になってきました．
もちろん，400Gの議論もはじまっています[[PDF][400G]]．

さらに，最近のネットワーク領域では，OpenflowやTRILLといったデータプレーンの機能要求が多様性してきています．
継続的なデータプレーンの機能更新と，一定のフォワーディング性能が要求されるスイッチ分野において，network processorと共にFPGAを採用するスイッチは増えていきそうです．

マルチポート対応が必要なIP Lookupのロジックには，未だ課題が残りますが，ネットワーク向けのメモリも日々進歩しているので無茶な話ではなさそうです．

------------
### 扱う内容

前置きが長くなりましたが，今回のメイントピックは，FPGAではなくてEthernet回路設計の導入です．
話の導入や具体例として，FPGAやVerilog-HDLを扱います．

今回は1000BASE-Tを扱いますが，10Gだろうと，40G,100Gであっても，ユーザロジックの設計方法は大きく変わりません．

- Ethernet データリンク層と物理層
- Ethernet 1000BASE-T (全二重)
- Ethernet PHYチップの使い方
- Ethernetフレーム入門
- Ethernet 10G, PCI/PCIe回路設計の事始め

実際のFPGA開発には，HDL (Verilog-HDLやVHDL) だけでなく，論理回路設計，FPGAベンダごとの開発環境の使い方，ペリフェラルの仕様の知識が必要です．
今回の内容では，FPGAによるネットワークデバイス開発の説明に重点をおくために，固有のFPGAベンダに依存するような内容は極力除き，ネットワーク屋さんの視点からまとめてみたいと思います．
題材はFPGAと言いつつも，気持ちとしては，どんなネットワークハードウェアでも通じる，Ethernet回路設計の一般知識を扱います．


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

10Mbpsや100Mbpsは，いまさら感があるのと，コードも長くなるので扱いません．
なので，終盤にでてくる今回作る回路は，100Mのスイッチングハブなどに挿しても動きません．

また，MACの機能も最小限のみ扱います．
Ethernet PHYには，様々なPHYの状態を保持するレジスタを持っていて，MDI (Multiple Document Interface)というインタフェースを通してMACがPHYにステータスを問い合わせたり変更することができます．

今回は，MACのIP Coreを使わず，MACの最小限の機能だけをピックアップして，自分で書いた回路を使って直接PHYチップと通信します．
MDIは実装しないので，例えば，Ethernetポートのリンクアップ・ダウンの検出などはできません．


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
けれど，10G以降の回路設計も基本は変わりません．さらにいえば，PCI Expressも物理層，データリンク層があって，Ethernetに近い仕様です．今回の話が理解できれば，今後も大きく変わることのない，高速インタフェース設計の基礎が理解できます．もう少し詳細な話題は，この文章の"Ethernet 10G, PCI/PCIe回路設計の事始め"で扱います．


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

------------------
### 送信回路を作る

------------------
### 受信回路を作る

----------------------------------------
### 完成した回路の内部処理遅延を計測する

----------------------------------------
### スイッチングハブの内部遅延を計測する

-----------------------------------------
### 落ち葉拾い (L2, L3機器に対応するには)

-----------------------------------------
### 応用: 簡単なCPU-lessなKVSを作ってみる

まずは仕様を決めます．
ミニマムコード用に最低限の機能のみの実装です．

- 通信プロトコルにUDPを利用
- コマンドはsetとget のみサポート
- Memcache Binary Protocol を使う
- Key length は binary: 64 bit
- Value length は binary: 256 bit
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


#### SERDESとは

(ここは知識があいまいなのでツッコミおまちしています)
FPGAでPHY回路が必要となると，もう少しPHYの仕事を知る必要があります．


#### 通信規格のThroughputを見積もる

Ethernet規格の命名規則を知ることで，転送帯域のオーバヘッドを知ることができます．<br>
これはEthernetに限った話ではなく，USB3.0やPCI Express, Infiniband, Thunderboltといった，高速なシリアル通信を使っているIOのオーバヘッドにも関係しています．

    {10, 100, 1000, 10G, 40G, 100G} BASE- {S, K, L}{

*シリアル通信のエンベデッド・クロック*

はじめに，有名どころのシリアル通信のエンベデッド・クロックをまとめてみます．

- 8b/10b
	* PCI Express (1.1, 2.0)
	* Ethernet 〇〇BASE-\*X\*
	* Infiniband (SDR, DDR, QDR)
	* USB 3.0
	* SATA
- 64b/66b
	* Ethernet 〇〇BASE-\*R\*
	* Infiniband FDR
- 128b/130b
	* PCI Express 3.0

*ヘッダサイズのオーバヘッド*

    Throughput = Payload Size / ( Payload Size + Overhead )


#### 100G事始め

はじめに，100 Gbpsをイメージするため，転送速後ごとに使用出来る時間とクロックを見てみます．

bps  | PPS (64 B)   | time/pkt (ns) | CPU clock@4GHz/pkt (clock) | PPS (1,518 B) 
-----|--------------|---------------|----------------------------|--------------
100M | 148,810      | 6,905         | 27,600                     | 8,127        
1G   | 1,488,095    | 690           | 2,760                      | 81,274       
10G  | 14,880,950   | 69            | 276                        | 812,743      
40G  | 59,523,800   | 17            | 68                         | 3,250,972    
100G | 148,809,500  | 7             | 28                         | 8,127,433    

**bps** は，Ethernetの通信規格のデータ転送速度です．
**PPS** は，Packet per secondの略で，データ転送速度ごとで処理されるフレーム数を表していて，フレームサイズは，IEEE 802.3 規格の最小値と最大値である 64, 1518 byte を選びました．
**CPU clock@4GHz/pkt** は，クロック 4 GHz のCPUで，フレームサイズ 64 byte のEthernet 1フレームあたりの処理に使えるクロック数です．
クロック数値の注意点として，このクロック数は，ネットワークの**片方向だけのデータ転送速度**で計算した値なので，双方向で考えると使用できるクロック数は，さらに半分になります．

この表を使って何が言いたいかというと，広帯域な通信では，はじめにPPSが頭打ちします．
10Gマルチポートや，40G以降だとメモリも問題になってきますが，割愛します．


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

