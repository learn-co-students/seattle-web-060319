class Animals
    attr_accessor :name, :color, :speed

    def initialize(name)
        @name = name
        @color = 'pink'
  
    end

    def sleep
        'is sleeping zzzzzzz'
    end

    def eat(food)
        "omnonmnom #{food}"
        
    end

    def poop
        'it poo a'
    end

    def see_dead_things
        'looks into the void'
    end


end
