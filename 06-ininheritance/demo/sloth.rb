class Sloth
    attr_accessor :name

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

    def grow_moss
        'gets greener'
    end

    def climb
        'can climb'
    end

end