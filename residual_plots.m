function residual_plots()
    for n=1:4
        [~, ~, errors, indices, x, y, test_x, ~, ~, res_poly] = hitta_funktion(n);
        figure(n+1)
        set(gcf, 'Position',  [200, 200, 450, 300])
        plot(x, y-res_poly, "r*")
        legend({'\fontsize{14}Differans'}, 'Location','southeast')
        %title(['\fontsize{14}Residual'])
    end

    i = indices(1:5)
    errors = errors(i)
    x_values = x(i)
   
end