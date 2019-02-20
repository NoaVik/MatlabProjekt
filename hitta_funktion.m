function [own_loss, poly_loss, errors, indices, x, y, test_x, test_poly1, test_poly2, res_poly] = hitta_funktion(n)

siffror=[%
    10.000   2028.960
    10.100   2070.480
    .
    .
    .
    19.900   8574.580
    20.000   8669.060
];


x = siffror(:, 1);
y = siffror(:, 2);
for i=1:length(siffror)
    for k=1:n+1
        A(i,k) = x(i)^(n+1-k);
    end;
end;

p = polyfit(x, y, n);
coefficients = p'
coefficients2 = inv(transpose(A)*A)*transpose(A)*y;

test_x = -14:0.01:22;
test_poly1 = polynomial(test_x, coefficients);
test_poly2 = polynomial(test_x, coefficients2);

[errors2, indices2] = squared_error(y, polynomial(x, coefficients2));
[errors, indices] = squared_error(y, polynomial(x, coefficients));
own_loss = mean(errors2);
poly_loss = mean(errors);

res_poly = polynomial(x, coefficients);

end


function y = polynomial(x, coefficients)
    k = length(coefficients);
    y = 0;
    for n=0:k-1
        y = y + (x.^n).*coefficients(k-n);
    end
end


function [errors, indices] = squared_error(y, y_hat)
    errors = (y-y_hat).^2;
    [sorted_errors, indices] = sort(errors, "descend");
end