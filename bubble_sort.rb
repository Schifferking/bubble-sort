def bubble_sort(nums)
  nums_copy = nums[0..-1]
  sorted = false
  max_iterations = nums_copy.length - 1

  while sorted == false
    sorted = true
    nums_copy.each_with_index do |n, index|
      break if index == max_iterations
      if nums_copy[index] > nums_copy[index + 1]
        sorted = false
        tmp = nums_copy[index + 1]
        nums_copy[index + 1] = nums_copy[index]
        nums_copy[index] = tmp
      end
    end
    max_iterations -= 1
  end

  nums_copy
end