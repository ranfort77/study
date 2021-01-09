classdef clsbaseRightTriTest < matlab.unittest.TestCase
    
    properties
        % test triangles
        tri = [7 9];
        triIso = [4 4];
        tri306090 = [2 2*sqrt(3)];
        triSkewed = [1 1500];
        % Define an absolute tolerance
        tol = 1e-10;
    end
    
    methods(TestClassSetup)
        function preconditions(testCase)
            angles = rightTri(testCase.tri);
            verifyEqual(testCase, angles(3), 90,'Fundamental problem: rightTri not producing right triangle');
        end
    end
    
    methods(TestClassTeardown)
    end
    
    methods(TestMethodTeardown)
    end
    
    methods(TestMethodSetup)
    end
    
    methods(TestMethodTeardown)
    end
    
    methods(Test)
        function test_sum_of_angles(testCase)
            angles = rightTri(testCase.tri);
            verifyEqual(testCase, sum(angles), 180)
            angles = rightTri(testCase.triIso);
            verifyEqual(testCase, sum(angles), 180)
            angles = rightTri(testCase.tri306090);
            verifyEqual(testCase, sum(angles), 180)
            angles = rightTri(testCase.triSkewed);
            verifyEqual(testCase, sum(angles), 180)
        end
        
        function test_isosceles_triangles(testCase)
            angles = rightTri(testCase.triIso);
            verifyEqual(testCase, angles(1), 45)
            verifyEqual(testCase, angles(1), angles(2))
        end
        
        function test_30_60_90_triangle(testCase)
            angles = rightTri(testCase.tri306090);
            verifyLessThanOrEqual(testCase, abs(angles(1)-30), testCase.tol)
            verifyLessThanOrEqual(testCase, abs(angles(2)-60), testCase.tol)
            verifyLessThanOrEqual(testCase, abs(angles(3)-90), testCase.tol)
        end
        
        function test_small_angle_approximation(testCase)
            angles = rightTri(testCase.triSkewed);
            smallAngle = (pi/180)*angles(1); % radians
            approx = sin(smallAngle);
            verifyLessThanOrEqual(testCase, abs(approx-smallAngle), testCase.tol, 'Problem with small angle approximation')
        end
    end
end

