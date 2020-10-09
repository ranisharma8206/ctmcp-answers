% 3. Functions and procedures
Due to the / * syntax, the end of a function must end with an expression. In this case,'if-then-else' is the expression. The parser does not throw an error even if the'else'clause is not described in the'if-then-else'as an expression. It is (probably) interpreted that'else'is not a domain (so it is not executed). That is, since the else clause is not expected, it is correct to raise an exception if such a thing happens. * /

declare declare
fun {Test X}
   if X then 1 end
end

try
   {Browse {Test false}}
catch X then
   {Browse X}
end


Even if it is less than%, the compiler passes the code in the same way, and an exception occurs in execution.
declare Y
Y = if false then 1 end
% This passes.
Y = if true then 1 end


% In addition, if you write in the procedure, it is as follows. Obviously no exceptions occur.
declare declare
proc {Test X? Y}
   if X then Y = X end
end






% 3.関数と手続き
/* 構文より、関数の末尾は式で終わる必要がある。この場合、'if-then-else'が式である。式としての'if-then-else'において'else'節を記述しなくてもパーサはエラーを吐かない。'else'は定義域でない（ので実行されない）という解釈をしている（と思われる）。すなわち、else節は想定されていないため、そのようなことが起こった場合は例外が発生するのが正しい。*/

declare
fun {Test X}
   if X then 1 end
end

try
   {Browse {Test false}}
catch X then
   {Browse X}
end


% 以下でも同じ考え方でコンパイラはコードを通し、実行において例外が発生する。
declare Y
Y = if false then 1 end
% これは通る。
Y = if true then 1 end


% なお、手続きで書くと以下。明らかに例外は発生しないことがわかる。
declare
proc {Test X ?Y}
   if X then Y = X end
end
