a = input("Coeficiente do termo \"ax²\"\n");
b = input("Coeficiente do termo \"bx\"\n");
c = input("Coeficiente do termo \"c\"\n");

if (a == 0)
  printf("Termo a = 0: Divisão por zero\n");
  return;
endif

[Xp, Xn] = qdr(a,b,c);