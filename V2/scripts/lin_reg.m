function [m, b, r] = lin_reg(x, y)
    x_mean = mean(x);
    y_mean = mean(y);

    m = sum((x-x_mean).*(y-y_mean))/sum((x-x_mean).^2);
    b = y_mean-m*x_mean;
    r = sum((x-x_mean).*(y-y_mean))/sqrt(sum((x-x_mean).^2))/sqrt(sum((y-y_mean).^2));
end