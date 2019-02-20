function function_plot()
    size = 20;
    for n=1:4
        [own_loss, poly_loss, errors, indices, x, y, test_x, test_poly1, test_poly2, res_poly] = hitta_funktion(n);
        figure(n+1)
        set(gcf, 'Position',  [200, 200, 450, 300])
        plot(x, y, 'r*', test_x, test_poly1)
        ylabel(['\fontsize{14}Polynom av grad ' num2str(n)])
        legend({'\fontsize{14}Mätvärden','\fontsize{14}Funktion'}, 'Location','southeast')
        %title(['Polynom av grad ' num2str(n)])
    end
end