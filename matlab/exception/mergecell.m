% mergecell.m
function c = mergecell(a, b)
if ~iscell(a) || ~iscell(b)
    error('myMathLib:inpTypeError', ...
        'Input arguments must be cell \n  a=%s, b=%s', ...
        class(a), class(b));
end
c = {a{:}, b{:}};
end