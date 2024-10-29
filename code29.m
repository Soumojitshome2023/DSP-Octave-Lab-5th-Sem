syms a variable;
syms n real;
syms z complex;

y = ztrans(a^n)


%{

y = (sym)

  /     1            |a|
  |  -------     for |-| < 1
  |    a             |z|
  |  - - + 1
  |    z
  |
  <  oo
  | ___
  | \  `
  |  \    n  -n
  |  /   a *z     otherwise
  | /__,
  \n = 0

%}
