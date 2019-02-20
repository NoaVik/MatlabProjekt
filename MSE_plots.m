function MSE_plots()
    start_n = 1
    max_n = 50;
    for n=start_n:max_n
        [own_loss(n), poly_loss(n), ~, ~, ~, ~, ~, ~, ~] = hitta_funktion(n);
    end
    figure(1)
    set(gcf, 'Position',  [200, 200, 450, 300])
    semilogy(poly_loss, "r*-")
    ylabel(['\fontsize{14}MSE'])
    xlabel(['\fontsize{14}Grad av polynom'])

    figure(2)
    set(gcf, 'Position',  [200, 200, 450, 300])
    semilogy(own_loss, "b*-")
    ylabel(['\fontsize{14}MSE'])
    xlabel(['\fontsize{14}Grad av polynom'])
end