function configure(path)
    grid on;
    grid minor;
    box on;
    ax = gca;
    ax.Toolbar.Visible = 'off';
    legend('Location', 'best');
    exportgraphics(gcf, path, 'ContentType', 'vector');
end

