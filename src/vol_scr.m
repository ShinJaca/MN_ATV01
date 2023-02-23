## Script de teste para a função de volume do tanque

T = [0.5 1.2 3 3.1]

for i = T
  v = volume(i, 1, 1);
  printf("% .4f\t\t% .4f\n", i, v);
end