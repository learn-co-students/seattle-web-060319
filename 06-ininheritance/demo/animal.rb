class Animal 
    attr_accessor :name, :color
    
    def initialize(name)
        @name = name
        @color = 'pink'
    end

    def eat(food)
        "I just ate #{food}!"
    end

    def poop
        "it poo"
    end 

    def be_cute
        "awww"
    end 
end
    
