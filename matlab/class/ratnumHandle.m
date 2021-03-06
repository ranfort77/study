classdef ratnumHandle < handle
    % RATNUMHANDLE class for rational numbers
    properties (Access=protected)
        n % Numerator
        d % Denomenator
    end
    
    methods
        function r = ratnumHandle(numerator,denomenator)
            r.n = numerator;
            r.d = denomenator;
        end
        
        function disp(r)
            if (r.d ~= 1)
                fprintf('%d/%d\n',r.n,r.d);
            else
                fprintf('%d\n',r.n);
            end
        end
        
        function r = plus(r1,r2)
            r = ratnumHandle(r1.n*r2.d + r2.n*r1.d, r1.d*r2.d);
        end
        
        function n = getN(r)
            n = r.n;
        end
        
        function setN(r,numerator)
            r.n = numerator;
        end
    end
end