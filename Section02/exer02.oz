% 2. Contextual environment
/ * Without this step, the behavior of the procedure MulByN would change with each call. This step is necessary for execution to be determined solely by its arguments. * /

% An example where N does not exist in the environment at the time of calling
declare A = 10 B

local MulByn in
   local N in
      N = 3
      proc {MulByn X? Y}
      Y = N * X
      end
   end
   {MulByn A B}
   {Browse B}% => 30
   % {Browse N} =>'variable N not introduced'
end

% An example where N exists in the environment at the time of calling, but is bound to a value other than 3.
declare A = 10 B
local MulByn in
   local N in
      N = 3
      proc {MulByn X? Y}
      Y = N * X
      end
   end
   local N in
      N = 10
      {MulByn A B}
      {Browse B}% => 30
    % {Browse N} => 10
   end
end





% 2.文脈的環境
/* このステップが無ければ、呼び出しの度に手続きMulByNの挙動が変わってしまう。実行がその引数のみによって決まるためには、このステップが必要である。*/

% 呼び出し時の環境にNが存在しない例
declare A=10 B

local MulByn in
   local N in
      N=3
      proc {MulByn X ?Y}
	 Y=N*X
      end
   end
   {MulByn A B}
   {Browse B} % =>30
   % {Browse N} => 'variable N not introduced'
end

% 呼び出し時の環境にNが存在するが、3以外の値に束縛されている例
declare A=10 B
local MulByn in
   local N in
      N=3
      proc {MulByn X ?Y}
	 Y=N*X
      end
   end
   local N in
      N=10
      {MulByn A B}
      {Browse B} % =>30
    % {Browse N} => 10
   end
end
