class Question 
  attr_reader :variable_left
  attr_reader :variable_right
  def initialize
    @variable_left = rand(20)
    @variable_right = rand(20)
  end

  def answer
     @variable_left + @variable_right
  end
end

# x = Question.new

# puts x.variable_left
# puts x.variable_right

# puts x.answer