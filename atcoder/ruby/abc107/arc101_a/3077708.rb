# Contest ID: abc107
# Problem ID: arc101_a ( https://atcoder.jp/contests/abc107/tasks/arc101_a )
# Title: C. Candles
# Language: Ruby (2.3.3)
# Submitted: 2018-08-25 13:11:49 +0000 UTC ( https://atcoder.jp/contests/abc107/submissions/3077708 ) 

n, k = gets.chomp.split(" ").map(&:to_i)

x = gets.chomp.split(" ").map(&:to_i)

neg = []
pos = []

x.each do |e|
  if e < 0
    neg << e.abs
  else
    pos << e
  end
end

neg.reverse!

if neg.empty?
  puts pos[k - 1]
elsif pos.empty?
  puts neg[k - 1]
else
  ans = []
  0.upto(k) do |i|
    next if i > neg.length || k - i > pos.length
    tm = 0
    left = neg[i - 1]
    right = pos[k - i - 1]
    tm = left + right + [left, right].min
    ans << tm
  end
  puts ans.min
end