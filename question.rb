class Question
    attr_accessor :answer, :display
    
    def initialize() 
    @number1 = rand(1..20)
    @number2 = rand(1...20)
    @answer = @number1 + @number2
    @display = "what is the answer to #{@number1} + #{@number2}"
    end
    
    











end