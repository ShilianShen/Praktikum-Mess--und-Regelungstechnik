function n = count_pulse(x,threshold)
    n = 0;
    zustand = 0;
    for i = 1:length(x)
        if zustand == 0 && x(i) > threshold
            n = n + 1;
            zustand = 1;
        elseif zustand == 1 && x(i) < threshold
            zustand = 0;
        end
    end
end