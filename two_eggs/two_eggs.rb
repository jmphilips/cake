class TwoEggs

  def initialize(floors)
    @upper_limit    = rand(floors)
    @floors         = floors
    @egg_count      = 2
    @drop_count     = 0
    @current_floor  = 1
  end

  def show_upper_limit
    puts @upper_limit
  end

  def get_skips
    starting_step = 1
    while starting_step**2 + starting_step - (@floors * 2) < 0
      starting_step += 1
    end
    @starting_skip = starting_step
  end

  def break_first_egg
    floors_to_skip = @starting_skip

    while @current_floor < @upper_limit
      @current_floor += floors_to_skip
      @drop_count += 1
      floors_to_skip -= 1
      puts "Current Floor: " + @current_floor.to_s
    end
    @current_floor
  end

  def break_second_egg
    while @current_floor > @upper_limit
      @drop_count += 1
      @current_floor -= 1
    end
    puts "#{@current_floor} is the limit"
  end

end