classdef rect < shape
    properties (Access=protected)
        h
        w
    end
    
    methods
        function r = rect(height,width,x,y,color)
            r = r@shape(x,y,color);
            r.h = height;
            r.w = width;
        end
        
        function disp(r)
            disp@shape(r);
            fprintf('Height = %f and Width = %f\n',r.h,r.w);
        end
        
        function a = area(r)
            a = r.w*r.h;
        end
    end
end