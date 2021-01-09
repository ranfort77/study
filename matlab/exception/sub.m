% sub.m
function c = sub(a, b)
if ~isnumeric(a) || ~isnumeric(b)
    meObj = MException('myMathLib:inpTypeError', ...
        'Input arguments must be numeric \n  a=%s, b=%s', ...
        class(a), class(b));
    meObj.throw();
end
c = a - b;
end