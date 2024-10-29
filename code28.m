syms n real
syms z complex
y=ztrans(n)

%{

y = (sym)

  /    1             1
  |----------   for --- < 1
  |         2       |z|
  |  /    1\
  |z*|1 - -|
  |  \    z/
  |
  <  oo
  | ___
  | \  `
  |  \      -n
  |  /   n*z     otherwise
  | /__,
  |n = 0
  \


%}
