# example of code block
2.times() {puts '2times'}
3.upto(5) {|k| puts k}
# puts k  # NameError: undefined lcal variable k

arr = ['a', 'b', 'c']
arr.each(){|e| puts e.upcase}

arr = [1, 3, 56, 7, 13, 52]
arr.delete_if() {|e| e > 7}
print(arr, "\n")

arr.delete_if() do |e|
  e > 7
end
print(arr, "\n")
