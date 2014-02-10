def setup
	@frames_per_cycle = 60 * 60
	color_mode(HSB, @frames_per_cycle, 100, 100)
	size 600, 600
	background 0
	@hue = 0
end

def draw
	fill_color_left_to_right
	 ellipse 290, 290, 500, 500
	fill 0
	ellipse 290, 290, 400, 400
	@hue = @hue + 1
	@hue = @hue % @frames_per_cycle
end

def fill_color_left_to_right
	fill(@hue, 100, 100)
end