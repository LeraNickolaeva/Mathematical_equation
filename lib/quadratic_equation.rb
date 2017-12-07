class QuadraticEquation < Equation

  def initialize(first_coef, second_coef, third_coef)
    @first_coef = first_coef
    @second_coef = second_coef
    @third_coef = third_coef
  end

  def output_q
    return 'Error' if discriminant < 0
    return "#{one_coef}" if discriminant.zero?
    "#{two_coefs}"
  end

  private

  def one_coef
    (-@second_coef / (2 * @first_coef))
  end

  def two_coefs
    [-@second_coef + Math.sqrt(discriminant), -@second_coef - Math.sqrt(discriminant)].map { |item| item / (2 * @first_coef) }
  end

  def discriminant
    @discriminant ||= @second_coef**2 - 4 * @first_coef * @third_coef
  end
end
