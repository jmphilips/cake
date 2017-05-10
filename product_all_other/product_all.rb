# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
# Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

# For example, given:

#   [1, 7, 3, 4]

# your function would return:

#   [84, 12, 28, 21]

# by calculating:

#   [7 * 3 * 4,  1 * 3 * 4,  1 * 7 * 4,  1 * 7 * 3]

# Do not use division in your solution.
def other_nums(arr)
  current_product = 1
  products_arr = []
  for i in (0...arr.length)
    products_arr[i] = current_product
    current_product *= arr[i]
  end

  reverse_products_array = []
  reverse_product_so_far = 1
  len = arr.length - 1
  while len >= 0
    reverse_products_array[len] = reverse_product_so_far
    reverse_product_so_far *= arr[len]
    len -= 1
  end
  return [reverse_products_array, products_arr]
end