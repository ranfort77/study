function tests = funbaseRightTriTest
tests = functiontests(localfunctions);
end

function setupOnce(testCase)
% test triangles
testCase.TestData.tri = [7 9];
testCase.TestData.triIso = [4 4];
testCase.TestData.tri306090 = [2 2*sqrt(3)];
testCase.TestData.triSkewed = [1 1500];

% Define an absolute tolerance
testCase.TestData.tol = 1e-10;

% preconditions
angles = rightTri(testCase.TestData.tri);
verifyEqual(testCase, angles(3), 90,'Fundamental problem: rightTri not producing right triangle');
end

function teardownOnce(testCase)
end

function setup(testCase)
end

function teardown(testCase)
end

function test_sum_of_angles(testCase)
angles = rightTri(testCase.TestData.tri);
verifyEqual(testCase, sum(angles), 180)
angles = rightTri(testCase.TestData.triIso);
verifyEqual(testCase, sum(angles), 180)
angles = rightTri(testCase.TestData.tri306090);
verifyEqual(testCase, sum(angles), 180)
angles = rightTri(testCase.TestData.triSkewed);
verifyEqual(testCase, sum(angles), 180)
end

function test_isosceles_triangles(testCase)
angles = rightTri(testCase.TestData.triIso);
verifyEqual(testCase, angles(1), 45)
verifyEqual(testCase, angles(1), angles(2))
end

function test_30_60_90_triangle(testCase)
angles = rightTri(testCase.TestData.tri306090);
verifyLessThanOrEqual(testCase, abs(angles(1)-30), testCase.TestData.tol)
verifyLessThanOrEqual(testCase, abs(angles(2)-60), testCase.TestData.tol)
verifyLessThanOrEqual(testCase, abs(angles(3)-90), testCase.TestData.tol)
end

function test_small_angle_approximation(testCase)
angles = rightTri(testCase.TestData.triSkewed);
smallAngle = (pi/180)*angles(1); % radians
approx = sin(smallAngle);
verifyLessThanOrEqual(testCase, abs(approx-smallAngle), testCase.TestData.tol, 'Problem with small angle approximation')
end