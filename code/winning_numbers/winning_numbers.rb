def winning_number?(num, array)

	

	if array.class == Array

		#array.include? num
		
		array.each do |n|

			if n == num

				return true
			end
		end
	end

	false
end