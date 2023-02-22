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
## @deftypefn {} {[@var{xp}, @var{xp}] =} qdr (@var{a}, @var{b}, @var{c})
##
## Função simple de zeros da equação quadrática pela formula de Bhaskara 
##
## @seealso{}
## @end deftypefn

## Author: Jaca <jaca@debSpiegel>
## Created: 2023-02-22
´
function [xp, xn] = qdr(a,b,c)
  d=b.^2-4.*a.*c;
  xp=(-b+sqrt(d))/(2.*a);
  xn=(-b-sqrt(d))/(2.*a);
endfunction