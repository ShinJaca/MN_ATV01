## Copyright (C) 2024 Jaca
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
## @deftypefn {} {@var{retval} =} babilon (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Jaca <jaca@debSpiegel>
## Created: 2024-04-02

function x = babilon (x, a, err=1e-3, n=10)
    xo = x;
    ero = 1;
    ii = 1;
    iflag = 0;

    if (a == 0)
        x = 0;
        return;
    endif

    if (a < 0)
        a = abs(a);
        iflag = 1;
    endif

    while (ero > err)
        x = (x + a / x) / 2;
        ero = abs((x - xo) / x);

        if (ii >= n)
            break;
        endif

        ii++;
        xo = x;
    endwhile

    if (iflag)
        x = x * i;
    endif

endfunction
