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
## @deftypefn {} {@var{retval} =} newtonraph (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-09

function xr = newtonraph (f, df, x0, e, n)
  xr = x0;
  printf("i\txr\t\txr-xn1\t\tf(xr)\t\tea\n");
  for i = 0:n
    xn1=xr-f(xr)/df(xr);
    ea = abs((xn1-xr)/xn1);
    printf("%2d\t% 9.6f\t% .6f\t% 14.6f\t% .6f\n", i, xr, xr-xn1, f(xn1), ea);
    if ea < e
      printf("Raiz: % .6f\nIteração: %d\n", xr, i);
      return;
    endif
    xr = xn1;
  endfor
  printf("Método falhou em %d iterações", i);
endfunction
