local colors <const> = {
	text = 0xffcad3f5,
	red = 0xf1ed8796,
	green = 0xffa6da95,
	blue = 0xff8aadf4,
	yellow = 0xffeed49f,
	peach = 0xfff5a97f,
	pink = 0xd3f5bde6,
	subtext2 = 0xffa5adcb,
	subtext1 = 0xc8b8c0e0,
	transparent = 0x00000000,
	bar = {
		bg = 0xf1181926,
		border = 0xffb7bdf8,
	},
	popup = {
		bg = 0xf1181926,
		border = 0xffb7bdf8,
	},
	slider = {
		bg = 0xf1181926,
		border = 0xffb7bdf8,
	},
	bg1 = 0xd324273a,

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then
			return color
		end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}

return colors
