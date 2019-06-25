# Contest ID: abc052
# Problem ID: abc052_b ( https://atcoder.jp/contests/abc052/tasks/abc052_b )
# Title: B. Increment Decrement
# Language: Ruby (2.3.3)
# Submitted: 2017-01-15 12:06:44 +0000 UTC ( https://atcoder.jp/contests/abc052/submissions/1065270 ) 

n = gets.chomp.to_i
s = gets.chomp.split("")
x = 0
xs = [x]
s.each do |c|
  if c == "I" then
    x += 1
  else
    x -= 1
  end
  xs << x
end
puts xs.max