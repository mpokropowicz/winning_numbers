def winning_nums(nums1, nums2)

	nums1 & nums2
end

def one_away_winning_nums(nums1, nums2)

	oneOff = []

	nums1.each do |num|

		numArray = num.to_s.split("")

		nums2.each do |n| #itterate over array element

			index = 0
			off_by_one = 0
			same_nums= 0

			numArray.each do |i| #itterate over each digit in num

				if n.size == num.size

					if n[index].to_i == i.to_i + 1 || n[index].to_i == i.to_i - 1

						off_by_one += 1
					end

					if n[index].to_i == i.to_i

						same_nums += 1
					end
				end

				index += 1
			end

			if same_nums == n.size - 1

				oneOff << n 
			end
		end
	end

	oneOff
end

def nums_not_claimed(nums1, array)

	oneOff = []

		nums1.each do |num|

			numArray = num.to_s.split("")

			array.each do |n| #itterate over array element

				index = 0
				off_by_one = 0
				same_nums= 0

				numArray.each do |i| #itterate over each digit in num

					if n.size == num.size

						if n[index].to_i == i.to_i + 1 || n[index].to_i == i.to_i - 1

							off_by_one += 1
						end

						if n[index].to_i == i.to_i

							same_nums += 1
						end
					end
					
					index += 1
				end

				if same_nums == n.size - 1

					oneOff << n 
				end
			end
		end

		array - oneOff
end