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
## @deftypefn {} {@var{retval} =} coorpolar (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Jaca <jaca@debSpiegel>
## Created: 2024-04-02

function [r, theta] = coorpolar (x, y)
    r = sqrt(x^2 + y^2);

    if x < 0

        if y > 0
            theta = atan(y / x) + pi;
        elseif y < 0
            theta = atan(y / x) - pi;
        else
            theta = pi;
        endif

    elseif x == 0

        if y > 0
            theta = pi / 2;
        elseif y < 0
            theta = -pi / 2;
        else
            theta = 0;
        endif

    else
        theta = atan(y / x);
    endif

    theta = rad2deg(theta);
endfunction
