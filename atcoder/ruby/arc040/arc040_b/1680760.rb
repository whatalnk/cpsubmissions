# Contest ID: arc040
# Problem ID: arc040_b ( https://atcoder.jp/contests/arc040/tasks/arc040_b )
# Title: B. 直線塗り
# Language: Ruby (2.3.3)
# Submitted: 2017-10-14 06:25:39 +0000 UTC ( https://atcoder.jp/contests/arc040/submissions/1680760 ) 

N, R = gets.chomp.split(" ").map(&:to_i)
field = gets.chomp.split("")

i = field.rindex(".")
if i.nil?
  puts 0
  exit
else
  ans = [i + 1 - R, 0].max
end

i = 0
while true
  break if i > (N - 1)
  if field[i] == "."
    i += (R - 1)
    ans += 1
  end
  i += 1
end
puts ans