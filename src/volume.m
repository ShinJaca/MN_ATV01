## Copyright (C) 2023 Jaca
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{v} =} volume (@var{d}, @var{rt}, @var{rp})
## 
## @var{d} Altura do nivel d'água a ser calculado
## @var{rt} Maior raio do tanque
## @var{rp} Parametro R das alturas do tanque
##
## @seealso{}
## @end deftypefn

## Author: Jaca <jaca@debSpiegel>
## Created: 2023-02-23

function v = volume (d, rt, rp) 
  ## Formulas de volumes e conversões
  vcn = @(h, r) pi() * r^2 * h / 3; % Volume do cone
  rd = @(h, hd, r) hd / h * r;      % Raio do cone na altura especificada

  vcl = @(h, r) pi() * r^2 * h;     % Volume do cilindro
  
  ht = 3 * rp;
  v = 0;
  if (d < 0)
    return
  endif
  
  if (d < rp)                 % Se d é menor que o nivel do cone
    v = vcn(d, rd(ht, d, rt)); % Volume do cone preenchido
  elseif (d <= ht)      % Se d não é maior que 3R
    v = vcn(rp, rt);           % Volume total do cone
    v+= vcl(d-rp, rt);         % Volume do cilindro preenchido mais vol. cone
  else
    printf("Transbordo\t");
    v = vcn(rp, rt);           % Volume total do cone
    v+= vcl(2*rp, rt);         % Volume total do cilindro preenchido mais vol. cone
  endif
  
endfunction