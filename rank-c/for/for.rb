# # step1
# # input2
# # 3
# # 1 6 9
# input_line1 = gets
# input_line2 = gets.split(' ')
# count = 0
# input_line2.each do |num|
#   count += 1 if num.to_i % 3 ==0
# end
# puts count


# # step2
# input_line1 = gets
# input_line2 = readlines
# result = "NO"
# input_line2.each do |num|
#     result = "YES" if num.chomp == "7"
# end
# puts result


# # step3
# f = File.new('step3-2.txt')
# input_line1 = f.gets
# input_line2 = f.readlines
# money = input_line2.last
# input_line2.each_with_index do |value, index|
#     if value.chomp == money
#         puts index + 1 
#         return
#     end
# end

# # refactaring 9 to 4
# input_line1, input_line2 = f.gets, f.readlines # 分割代入出来るぜ！！
# money = input_line2.last
# new_input_line2 = input_line2.map(&:chomp)
# puts new_input_line2.index(money) + 1


# step4
# 絶対にこれはもっと良い方法あるからリファクタリングする
f = File.new('step4-2.txt')
num1 = f.gets.chomp
array1 = f.readlines
new_array1 = array1.slice!(0, num1.to_i)
num2 = array1[0]
array1.shift
new_array1.each do |value1|
  array1.each do |value2|
    if value2.chomp.include?(value1.chomp)
      puts "YES"
    else
      puts "NO"
    end
  end
end


# step final
# 人数がN 最初の発表された数がM 最後に発表される数がK
f = File.new('stepF.txt')