# Contest ID: arc080
# Problem ID: arc080_a ( https://atcoder.jp/contests/arc080/tasks/arc080_a )
# Title: C. 4-adjacent
# Language: Ruby (2.3.3)
# Submitted: 2017-08-06 13:10:16 +0000 UTC ( https://atcoder.jp/contests/arc080/submissions/1490087 ) 

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

mod4 = Array.new(3, 0)

arr.each do |a|
  cnt = 0
  while true
    break if cnt == 2
    if a.even? then
      cnt += 1
      a /= 2
    else
      break
    end
  end
  mod4[cnt] += 1
end

x = [mod4[2], mod4[0]].min
mod4[0] -= x
mod4[2] -= x
if mod4[0] > 1  then
  puts "No"
elsif mod4[0] == 1
  if mod4[1] == 0 then
    puts "Yes"
  else 
    puts "No"
  end 
else
  puts "Yes"
end