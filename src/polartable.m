1
function pr(x, y)
  [r, th] = coorpolar(x, y);
  printf("% .3f\t% .3f\t% .3f\t% .3f\t\n", x, y, r, th);
endfunction

function rz(a, err)
  x=a/2;
  r = babilon(x, a, err);
  printf("% .3f\t% .3f\t% .3f\t\n", a, x, r);
endfunction

printf("x\ty\tr\tø\n");
pr(2,0);
pr(2,1);
pr(0,3);
pr(-3,1);
pr(-2,0);
pr(-1,-2);
pr(0,0);
pr(0,-2);
pr(2,2);

printf("a\tx\traiz\n");
rz(0,1e-4);
rz(2,1e-4);
rz(10,1e-4);
rz(-4,1e-4);