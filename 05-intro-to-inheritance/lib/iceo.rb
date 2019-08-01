class CEO < Employee
    def initialize
        @salary = 900_000
    end

    def bonus(xx, yy)
        normal_bonus = super(xx)
        14 * normal_bonus + xx * yy
    end
end