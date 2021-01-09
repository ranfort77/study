classdef circle < shape
    properties (Access=protected)
        r
    end
    
    methods
        function c = circle(radius,x,y,color)
            c = c@shape(x,y,color); 
            c.r = radius;
        end
        
        function disp(c)
            disp@shape(c); 
            fprintf('Radius = %f\n',c.r);
        end
        
        function a = area(c)
            a = pi*c.r^2;
        end
    end
end
