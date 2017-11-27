class Series
  attr_reader :num

  def initialize(num)
    @num = num
  end
  
  def slices(n)
    fail(ArgumentError, "wrong argument") unless valid_argument(n)

    start = 0
    stop = num.length
    slices_arr = []

    loop do
      slice_num = [num.slice(start, n)]
      slices_arr << slice_num if check_element_size(slice_num, n)
      start += 1
      break if start == stop
    end

    map_to_num(slices_arr)
  end

  private
  def map_to_num(arr)
    arr.map do |sub_array|
      sub_array.join('').chars.map(&:to_i)
    end
  end

  def check_element_size(arr, n)
    arr[0].length == n
  end

  def valid_argument(n)
    n <= num.length && n.is_a?(Integer)
  end
end