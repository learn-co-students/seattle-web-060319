module Hunt

    attr_accessor :speed

    def initialize
        @speed = 'fast'
    end
    def start_hunt(animal)
        "The hunt has begun for #{animal}"
    end

    def end_hunt
        "lets not do that again"
    end


end
