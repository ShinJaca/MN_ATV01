## Função para encontrar zero de função pelo método da bissecção
## f => Função para a qual se quer achar um zero
## a => Limite inferior do intervalo
## b => Limite superior do intervalo
## e => Erro limite para a aproximação
## N => Número limite de iterações

## -*- texinfo -*-
## @deftypefn {} {@var{out} =} bissec (@var{f}, @var{a}, @var{b}, @var{e}, @var{N})

## Função para encontrar zero de função pelo método da bissecção

## @seealso{}
## @end deftypefn

## Author: Sérgio Pugliesi <sergiopugli@gmail.com>
## Created: 2023-03-02
function out = bissec(f, a, b, e, N)

    if ((f(a) .* f(b)) > 0)
        error("Não há mudança de sinal!!");
    endif

    % printf("i\ta\t\tf(a)\t\tb\t\tf(b)\t\txr\t\tf(xr)\t\tea\n");
    printf("k\ta\t\tf(a)\t\tb\t\tf(b)\t\txr\t\tf(xr)\t\tea\n");

    it = 1;
    r = a;

    while (it <= N)
        ro = r; % salvando a estimativa anterior
        r = (a + b) / 2; % particionamento
        de = abs(r - ro); % calculo do erro
        fr = f(r); % calculo da função para r

        if ((fr == 0) || (de <= e))% Condição de parada ou o zero ou o erro menor
            out = r;
            printf("Raiz: % .6f\n\n", r);
            return;
        endif

        it++; % Incremento das itereções

        if ((f(a) .* fr) < 0)% Teste de posição da estimativa
            b = r;
        else
            a = r;
        endif

        printf("%##d\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\n", it, a, f(a), b, f(b), r, f(r), de);

    endwhile

    printf("O método falhou em %d iterações\n", it);
    return
end
