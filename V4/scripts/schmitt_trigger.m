function y = schmitt_trigger(x, obere_schwelle, untere_schwelle)
    y = zeros(size(x));
    zustand = 0;
    for i = 1:length(x)
        if zustand == 0 && x(i) > obere_schwelle
            zustand = 1;
        elseif zustand == 1 && x(i) < untere_schwelle
            zustand = 0;
        end
        y(i) = zustand;
    end
end