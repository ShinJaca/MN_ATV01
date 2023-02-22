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
## @deftypefn {} {@var{retval} =} fncos (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Jaca <jaca@debSpiegel>
## Created: 2023-02-22

function retval = fncos (x, err)
  aterr = 100;
  a = 1;
  idx = 2;
  smidx = -1;
  vr = cos(x)
  printf("~Cos\t\tErro\n");
  while(abs(aterr)>err)
    a = a + (smidx * (x^idx)/factorial(idx));
    idx+=2;
    smidx*=-1;
    aterr = errrel(vr, a);
    printf("% .4f\t\t% .4f\n", a, aterr);
  endwhile
endfunction
