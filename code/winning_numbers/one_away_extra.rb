def nums_one_away(num, array)

	#we must pass in an Array and it must be populated
	return false if array.class != Array || array.size == 0

	numArray = num.to_s.split("")
	oneOff = []

	print numArray
	array.each do |n|

		index = 0

		numArray.each do |i|

			print index


			if n[index].to_i == i.to_i + 1 || n[index].to_i == i.to_i - 1
				oneOff << n
			end
			index += 1
		end

	end

end