class QuadraticEquation < Equation

  def solve
    return 'Error' if discriminant < 0
    return "#{one_coef}" if discriminant.zero?
    "#{two_coefs}"
  end

  private

  def one_coef
    (-params[:secondqua].to_f / (2 * params[:firstqua].to_f))
  end

  def two_coefs
    [-params[:secondqua].to_f + Math.sqrt(discriminant), -params[:secondqua].to_f - Math.sqrt(discriminant)].map { |item| item / (2 * params[:firstqua].to_f) }
  end

  def discriminant
    @discriminant ||= params[:secondqua].to_f**2 - 4 * params[:firstqua].to_f * params[:thirdqua].to_f
  end
end
