# Contest ID: abc056
# Problem ID: arc070_a ( https://atcoder.jp/contests/abc056/tasks/arc070_a )
# Title: C. Go Home
# Language: Ruby (2.3.3)
# Submitted: 2017-03-18 12:57:04 +0000 UTC ( https://atcoder.jp/contests/abc056/submissions/1169131 ) 

x = gets.chomp.to_i

sum = 0
i = 1
while true
  if 2 * x <= (1 + i) * i then
    puts i
    exit
  end
  sum += i
  i += 1
end