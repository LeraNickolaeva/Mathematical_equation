class Equation
  include EquationType

  attr_accessor :params

  def initialize(params)
    @params = params
  end
  
end
