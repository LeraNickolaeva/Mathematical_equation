module EquationType

  def solve
  	@type = params[:check].to_s
    @type == 'linear' ? LinearEquation.new : QuadraticEquation.new
  end
end