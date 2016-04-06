class Calculator
    attr_accessor :answer
    def initialize
        @answer = 0
    end
    def add(*arg)
        if arg.class == Array
            ##put flatten and reduce in master iteratorrr file
            @answer += arg.flatten.reduce(:+)
        else
            @answer += arg
        end
        self
    end

    def subtract(*arg)
        if arg.class == Array
            @answer -= arg.flatten.reduce(:+)
        else
            @answer -= arg
        end
        self
    end
    def multiply(*arg)
        if @answer == 0
            @answer =1
        end
        if arg.class == Array
            @answer *= arg.flatten.reduce(:*)
        else
            @answer *= arg
        end
        self
    end
    def answerTotal
        @answer
    end
end

calc = Calculator.new
# puts calc.add(4,4).subtract(3,3).multiply(2).answerTotal
puts calc.multiply(4,4).subtract(2).answerTotal
