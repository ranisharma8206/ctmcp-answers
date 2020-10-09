
% 1. Free variables and bound variables

/ *
Perhaps the question sentence wants to ask, "Is the variable pointed to by the second P bound?"
Think complementing "declare P".
Written in a form close to the nuclear language, it is as follows.
P = proc {$ X}
       if X> 0 then {P X-1} end
    end
If the variable in the storage area indicated by P is p, then p is a variable bound to the procedure value.
* /

/* c.f. Transition of execution state
([(local P in <s> end, Φ)], Φ)
([(P = ..., {P => p})], {p})
([()], {p = (proc ..., P => p)})
* /






% 1.自由変数と束縛変数

/*
たぶん、問題文は、「二番目のPの指す変数は束縛されているか」と聞きたいのだと思う。

"declare P"を補完して考える。
核言語に近い形で書くと、以下。

P = proc{$ X}
       if X>0 then {P X-1} end
    end

Pの示す格納域の変数をpとすると、pは手続き値に束縛された変数である。

*/

/* c.f.実行状態の遷移
([(local P in <s> end,Φ)],Φ)
([(P=...,{P=>p})],{p})
([()],{p=(proc...,P=>p)})
*/


