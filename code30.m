syms a variable;
syms n real;
syms z complex;

y = ztrans(n.*(a^n))

%{

y = (sym)

  /      a             |a|
  | ------------   for |-| < 1
  |            2       |z|
  |   /  a    \
  | z*|- - + 1|
  |   \  z    /
  |
  <  oo
  | ___
  | \  `
  |  \    n    -n
  |  /   a *n*z     otherwise
  | /__,
  |n = 0
  \


%}
