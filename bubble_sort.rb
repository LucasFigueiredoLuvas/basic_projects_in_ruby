class BubbleSort
	def start(list)
		unsorted = true
		while unsorted do
			i = 0
			unsorted = false
			while i < (list.length - 1)
				if list[i] > list[i + 1]
					list[i], list[i + 1] = list[i + 1], list[i]
					unsorted = true
				end
				i += 1
			end
		end

		return list
	end
end

unordered_list = [10,4,3,9]
bubble_sort = BubbleSort.new.start(unordered_list)

p bubble_sort