class LinearEquation < Equation
	
  def initialize(first_coef, second_coef)
    @first_coef = first_coef
    @second_coef = second_coef
  end

  def output_l
    return 'Error' if @first_coef.zero?
    @answer = -@second_coef / @first_coef
    "#{@answer}"
  end
end
