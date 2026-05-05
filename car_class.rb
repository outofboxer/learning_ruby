class MyCar
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model 
    @speed = 0
    @started = false
  end
  
  def speed_up(delta) 
    @speed += delta
    
    p "speed #{@speed} after increased by #{delta}"
  end
  
  def brake(delta)
    @speed -= delta
    p "speed #{@speed} after decreased by #{delta}"
  end
  
  def ignite()
    @started = true
  end
  
  def shutOff() 
    @started = false
    @speed = 0
    p "speed #{@speed} after stop"
  end
  
end

oka = MyCar.new(1978, 'Red', 'kek')
oka.speed_up(10)
oka.brake(5)
oka.shutOff
