% 1.計算機
%  (a)
declare V1 V2 V4 V8 V16 V32 V64
V1 = 2
V2 = V1*V1
V4 = V2*V2
V8 = V4*V4
V16 = V8*V8
V32 = V16*V16
V64 = V32*V32
V100 = V64*V32*V4 % (b)でも述べるが、これはプログラマが各命令間の状態のやりとりを手助けしている。

% (b)
% A.近道はあるかもしれないが、それは人間が部分的に問題を解く(変形する)ことに依存する。

% * 考察：関数を定義しないとはどういうことか
% 第二章・第三章の宣言的モデルに従って考える。使える文は、複文、変数宣言、変数束縛、条件分岐のみである。組み込み関数は数値演算のみとする（関数というデータ型は存在しない）。
% 関数が定義できないということは、例えば再帰が使えないということであり、ループなどが使えないということである。
% 一般に、再帰ができないと、状態をスレッド化して計算することができない。すなわち、それぞれの計算は一回きりとなり、相互に状態のやりとりを自動ですることはできない。
% また、関数が定義できないということは、繰り返しを抽象化できないということである。それは、全ての計算をプログラマが直書きすることを意味する（言い換えれば、プログラマが問題をうまく抽象化できなければ、必要とされる労力は変わらない。今回の問題は、抽象化が非常に容易であるために、関数は容易に力を発揮する。）
