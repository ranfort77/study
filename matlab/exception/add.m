% add.m
function c = add(a, b)
if ~isnumeric(a) || ~isnumeric(b)
    error('myMathLib:inpTypeError', ...
        'Input arguments must be numeric \n  a=%s, b=%s', ...
        class(a), class(b));
end
c = a + b;
end