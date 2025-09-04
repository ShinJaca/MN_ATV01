

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} falsapos (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-02

function out = falsapos (f, a, b, e, N)
  if ((f(a) .* f(b)) > 0)
     error("Não há mudança de sinal!!");
  endif
   
  % printf("Iter.\t\tX\t\t\terro\n");
  % printf("i\ta\t\tb\t\txr\t\tea\n");
  printf("i\ta\t\tf(a)\t\tb\t\tf(b)\t\txr\t\tf(xr)\t\tea\n");
   
  it = 1;
  
  % r = b - (f(b) .* (a-b)/(f(a)-f(b))); % Estimativa inicial (primeira iteração)
  r = (a.*f(b)-b.*f(a))/(f(b) - f(a));
  fr = f(r);
  % printf("%##d\t\t% .6f\t\t% .6f\n", it, r, abs(fr));
  printf("%##d\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\n", it, a,f(a), b,f(b), r,f(r), abs(fr));
  it++;
  while ( (abs(fr) > e) && (it < N) )  % Condição de parada do loop
    
    fr = f(r);
    
    if ((f(a).*fr)<0)  % Teste de posição da estimativa
      b = r;
    else
     a = r;
    endif
    it++;
    % r = b - (f(b) .* (a-b)/(f(a)-f(b))); % Nova estimativa;
    r = (a.*f(b)-b.*f(a))/(f(b) - f(a)); % Nova estimativa;
    % printf("%##d\t\t% .6f\t\t% .6f\n", it, r, abs(fr));
    % printf("%##d\t% .6f\t% .6f\t% .6f\t% .6f\n", it, a, b, r, abs(fr));
    printf("%##d\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\n", it, a,f(a), b,f(b), r,f(r), abs(fr));
  endwhile
  out = r;
  printf("Raiz: % .6f\n\n", r);
endfunction
