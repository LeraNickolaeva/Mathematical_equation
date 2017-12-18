class LinearEquation < Equation

  def self.solve
    return 'Error' if params[:firstlin].to_f.zero?
    @answer = -params[:secondlin].to_f / params[:firstlin].to_f
    "#{@answer}"
  end
end
