# Contest ID: abc059
# Problem ID: arc072_a ( https://atcoder.jp/contests/abc059/tasks/arc072_a )
# Title: C. Sequence
# Language: Ruby (2.3.3)
# Submitted: 2017-04-29 08:56:51 +0000 UTC ( https://atcoder.jp/contests/abc059/submissions/1248790 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

# +-+-
ret1 = 0
sum = 0
n.times do |i|
  sum += a[i]
  if i.even? && sum <= 0 then
    ret1 += (sum.abs + 1)
    sum = 1
  elsif i.odd? && sum >= 0 then
    ret1 += (sum.abs + 1)
    sum = -1
  end
end

#-+-+
ret2 = 0
sum = 0
n.times do |i|
  sum += a[i]
  if i.even? && sum >= 0 then
    ret2 += (sum.abs + 1)
    sum = -1
  elsif i.odd? && sum <= 0 then
    ret2 += (sum.abs + 1)
    sum = 1
  end
end
puts [ret1, ret2].min