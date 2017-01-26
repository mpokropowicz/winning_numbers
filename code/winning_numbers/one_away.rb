def one_away(num1, num2)

	unless num1.class == String && num2.class == String

		false
	else

	#we can be destructive here, no need to preserve original input
	num1 = num1.split("")
	num2 = num2.split("")

	comparison = num1.zip(num2)

	nums_one_away = 0
	nums_same = 0

	comparison.each do |n|

		index = 0

		if n[index + 1].to_i == n[index].to_i + 1 ||
		   n[index + 1].to_i == n[index].to_i - 1

		   nums_one_away +=1
		end

		if n[index] == n[index + 1]

			nums_same += 1
		end
	end

	if  nums_one_away == 1 && nums_same == num1.size - 1

		true
	else

		false
	end
	end
end