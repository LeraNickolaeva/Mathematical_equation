class Equation

  attr_reader :params

  def initialize(params)
    @params = params
  end

  def solve
    @type = params[:check].to_s
    @type == 'linear' ? linear_equation : quadratic_equation
  end

  private

  def linear_equation
    @data = LinearEquation.new(params[:firstlin].to_f, params[:secondlin].to_f).output_l
  end

  def quadratic_equation
    @data = QuadraticEquation.new(
      params[:firstqua].to_f, 
      params[:secondqua].to_f,
      params[:thirdqua].to_f
    ).output_q
  end
end
