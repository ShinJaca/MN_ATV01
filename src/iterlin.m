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
## @deftypefn {} {@var{retval} =} iterlin (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-09

% function xr = iterlin (f, g, x0, xv, err, N)
function xr = iterlin (f, g, x0, err, N)
    xr = x0;
    i = 0;

    % printf("i\txr\t\txr-xa\t\tf(xr)\t\tea\t\txv-xr\n");
    printf("i\txr\t\tf(xr)\t\tea\n");

    while (i <= N)
        xa = xr;
        xr = g(xa);
        i++;

        if (xr != 0)
            ea = abs((xr - xa) / xr);
        endif

        % printf("% 2d\t% .6f\t% .6f\t% .6f\t% .6f\t% .6f\n", i, xr, xr-xa, f(xr), ea, xv-xr);
        printf("%##d\t% .6f\t% .6f\t% .6f\n", i, xr, f(xr), ea);

        if ((ea < err) || (i >= N))
            printf("Raiz: % .6f\n", xr);
            return;
        endif

    endwhile

    printf("Método falhou em %d iterações", i);

endfunction
