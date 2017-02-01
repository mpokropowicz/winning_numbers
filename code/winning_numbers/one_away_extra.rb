def nums_one_away(num, array)

	#we must pass in an Array and it must be populated
	unless num.class == String && num.to_i.to_s == num && array.class == Array &&
		   array.size > 0 && array.all? {|e| e.class == String} &&
		   array.all? {|e| e.to_i.to_s == e}

		return false
	else

	numArray = num.to_s.split("")
	oneOff = []

	array.each do |n| #itterate over array element

		index = 0
		count = 0

		numArray.each do |i| #itterate over each digit in num

			if n.size == num.size

				if n[index].to_i == i.to_i + 1 || n[index].to_i == i.to_i - 1

					count += 1
				end
			end

			index += 1
		end

		if count == 1 #now let's prune non-same base numbers

			oneOff << n

			oneOff.each do |j|

				temp = 0
				differences = 0

				j.each_char do |c|

					if c != num[temp]
						
						differences +=1
					end

				temp+=1
				end

				if differences != 1

					oneOff.delete(n)
				end
			end
		end
	end
	end

	oneOff

end

print nums_one_away('10123', ['9999', '5678', '1235', '1134', '234', '11323', '11123','20123'])