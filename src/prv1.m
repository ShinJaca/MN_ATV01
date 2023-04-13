1;
A = [0 0 1.0000 0 0 0 0 1.0000 0 0
    1.0000 0 0 0 0 0 0 0 1.0000 0
    0 1.0000 0 0.6000 0 0 0 0 0 0
    -1.0000 0 0 -0.8000 0 0 0 0 0 0
    0 -1.0000 0 0 0 0 0.6000 0 0 0
    0 0 0 0 -1.0000 0 -0.8000 0 0 0
    0 0 -1.0000 -0.6000 0 1.0000 0 0 0 0
    0 0 0 0.8000 1.0000 0 0 0 0 0
    0 0 0 0 0 -1.0000 -0.6000 0 0 0
    0 0 0 0 0 0 0.8000 0 0 1.0000];

b = [0
    0
    -74
    0
    0
    24
    0
    0
    0
    0];

vname = [
    "AB"
    "BC"
    "AD"
    "BD"
    "CD"
    "DE"
    "CD"
    "Ax"
    "Ay"
    "Ey"
    ];

pA = A;
pA(:, [1 2 3 4 8 9]) = pA(:, [8 9 1 2 3 4]);
pA(:, [3 4 5 6 9]) = pA(:, [9 3 4 5 6]);
pA(:, [6 7 8]) = pA(:, [7 8 6]);

vname([1 2 3 4 8 9], :) = vname([8 9 1 2 3 4], :);
vname([3 4 5 6 9], :) = vname([9 3 4 5 6], :);
vname([6 7 8], :) = vname([7 8 6], :);

for i = 1:10
    printf("\t%s", vname(i, :))
end

printf("\n")

for i = 1:10

    for j = 1:10
        printf("\t% .4f", pA(i, j))
    end

    printf("\n")
end