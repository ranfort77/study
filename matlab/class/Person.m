classdef Person
    properties
        name
        surname
        address
    end
    
    methods
        function obj = Person(name,surname,address)
            obj.name = name;
            obj.surname = surname;
            obj.address = address;
        end
    end
end