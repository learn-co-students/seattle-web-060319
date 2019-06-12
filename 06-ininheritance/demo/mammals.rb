class Mammals < Animals

    def initialize(name)
        super(name)
        @blood = 'warm'
    end

    def live_birth(something)
        "its a beautiful baby #{something}"
    end


end
