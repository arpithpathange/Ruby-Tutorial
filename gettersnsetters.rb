#!/usr/bin/ruby

class GetternSetter
	@height
	@width

	def setHeight(height)
		@height = height
	end

	def setWidth(width)
		@width = width
	end

	def getHeight
		return @height
	end

	def getWidth
		return @width
	end

	@obj1 = GetternSetter.new
	@obj2 = GetternSetter.new

	@obj1.setWidth("5")
	@obj1.setHeight("10")

	@obj2.setHeight("15")
	@obj2.setWidth("20")

	puts "Area of obj1 is : ",(@obj1.getHeight.to_i * @obj1.getWidth.to_i)
	puts "Area of obj1 is : ",(@obj2.getHeight.to_i * @obj2.getWidth.to_i)

end