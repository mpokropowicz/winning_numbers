def nums_one_away(num, array)

	#we must pass in an Array and it must be populated
	return false if array.class != Array || array.size == 0

	numArray = num.to_s.split("")
	oneOff = []

	array.each do |n| #itterate over array element

		index = 0
		count = 0

		numArray.each do |i| #itterate over each digit in num

			if n[index].to_i == i.to_i + 1 || n[index].to_i == i.to_i - 1
				count += 1
			end

			index += 1
		end

		if count == 1 #only one digit can be one away
				oneOff << n
			end
	end

	oneOff

end

nums_one_away('1234', ['9999', '5678', '1235', '1134', '1344'])