classdef shape
    properties (Access=protected)
        x
        y
        color
    end
    
    methods
        function s=shape(x,y,color)
            s.x = x;
            s.y = y;
            s.color = color;
        end

        function disp(s)
            fprintf('The shape is centered at (%f,%f) and has color %s\n',s.x,s.y,s.color);
        end
        
        function color=get_color(s)
            color = s.color;
        end
    end
end
