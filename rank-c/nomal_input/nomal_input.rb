# step1
input1 = gets
p input1


# step2
input2 = gets.to_i
p input2
input2.times { p "paiza" }


# step3
input3 = readlines
# 配列の先頭の要素を取り除いてそれを返します。引数を指定した場合はその個数だけ取り除き、それを配列で返します。
input3.shift

input3 = readlines
input3.shift
puts input3 if readlines.length <= 50


# step4
input4 = File.readlines("test-case_mondai__1.txt")
input4.shift
input4.sort! {|a, b| a.to_i <=> b.to_i }
puts input4.last


# step5
# ポイントは、文字列→文字列なのと正規表現を使える事。
input5 = gets.to_i
new_input = "paiza" * input5
puts new_input.gsub(/ap/, "a p")


# Final
inputF = File.readlines("test-case__hash.txt")
inputF.shift
inputF.each do |obj|
  p obj # String
  obj_array = obj.split(' ') # Split make String to Array
  p obj_array # Array
  age = obj_array[1].to_i + 1
  obj_array[1] = age + 1
  puts "#{obj_array[0]} #{obj_array[1]}"
end