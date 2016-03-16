function [surf1] = plot3dObject()
    [X,Y] = meshgrid(-8:.5:8);
    Z = zeros(size(X));
    surf1 = surf(X,Y,Z)
end

