
import collections
import typing

Person = collections.namedtuple('Person', ['name', 'number'])
a = Person('Tom', 1)
print('name={}, number={}'.format(a.name, a.number))
name, number = a
print('name={}, number={}'.format(name, number))
a = Person('Jane', 2)
print('name={}, id={}'.format(a.name, a.number))

class Person(typing.NamedTuple):
    name: str
    number: int
    
a = Person('Rion', 3)
print('name={}, number={}'.format(a.name, a.number))
name, number = a
print('name={}, number={}'.format(name, number))