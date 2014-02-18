# def setup
# 	@frames_per_cycle = 60 * 60
# 	color_mode(HSB, @frames_per_cycle, 100, 100)
# 	size 600, 600
# 	background 0
# 	@hue = 0
# end

# def draw
# 	fill_color_left_to_right
# 	 ellipse 290, 290, 500, 500
# 	fill 0
# 	ellipse 290, 290, 450, 450
# 	@hue = @hue + 1
# 	@hue = @hue % @frames_per_cycle
# end

# def fill_color_left_to_right
# 	fill(@hue, 100, 100)
# end

def setup
	@frames_per_cycle = 60 * 60 * 1.8
	color_mode(HSB, @frames_per_cycle, 100, 100)
	size 600, 600
	background 0
	@hue = 0
 	@degrees = 270.0
 	@degreeshour = 270.0
end

def draw
  translate width/2.0, height/2.0

  radius = 200
  t = Math::PI*2.0/360.0 * @degrees
  t1 = Math::PI*2.0/360.0 * @degreeshour
  circle radius, t
  circle_hour radius, t1
  @degrees += 0.00166666
  @degreeshour += 0.000069444

  # @degrees += 0.11
  # puts "@degrees: #{@degrees}"
end

def circle r, theta
	x = x_from_polar(r, theta)
	y = y_from_polar(r, theta)

 fill_color_left_to_right
	@hue = @hue + 1
	@hue = @hue % @frames_per_cycle

  ellipse x, y, circle_diameter, circle_diameter
end

def circle_hour r, theta
	x = x_from_polar(r, theta)
	y = y_from_polar(r, theta)

 fill_color_left_to_right
	@hue = @hue + 1
	@hue = @hue % @frames_per_cycle

  ellipse x, y, circle_diameter, circle_diameter
end

def circle_diameter
	max(30, 30)
end

def fill_color_left_to_right
	fill(@hue, 100, 100)
end

def x_from_polar(r, theta)
  return r * Math.cos(theta)
end

def y_from_polar(r, theta)
  return r * Math.sin(theta)
end
