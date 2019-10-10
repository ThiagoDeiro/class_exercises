
# exem of inheritance
class Feline
    attr_accessor :name, :age

    def initialize(name, age= 0)
        @name = name
        @age = age
    end

    def meow
        puts "#{@name} is meowing"
    end

    def about_me
        puts "My name is #{@name} and I am #{age} years old"
    end

end

class Cat < Feline
    def meow
        puts "#{@name} is meooowing!"
    end
end

cat_1 = Cat.new('Grouncho', 4)
cat_2 = Cat.new('harpo', 3)

cat_1.about_me
cat_2.meow
