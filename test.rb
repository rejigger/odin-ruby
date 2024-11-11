class Dog
    def initialize(name)
        @name = name
    end
    def get_name
        @name
    end
end

a_dog = Dog.new("fido")

puts a_dog.get_name
