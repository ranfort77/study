% calc.m
function c = calc
a = 1;
b = '10';

try
    c = add(a, b);
catch meobj
    me2 = MException('calc:dummyError', 'dummy error message');
    meobj = meobj.addCause(me2);
    meobj.throw();
end
end