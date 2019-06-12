class Cat < Mammals

    include Hunt

    def initialize(name)
        super(name)
        @color = 'black & white'
    end

    def meow
        'meoooooow mewo '
    end


end
