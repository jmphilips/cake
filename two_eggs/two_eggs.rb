class TwoEggs

  def initialize(floors)
    @upper_limit = rand(floors)
  end

  def show_upper_limit
    puts @upper_limit
  end

  
end