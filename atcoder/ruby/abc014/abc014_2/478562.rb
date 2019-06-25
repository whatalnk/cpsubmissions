# Contest ID: abc014
# Problem ID: abc014_2 ( https://atcoder.jp/contests/abc014/tasks/abc014_2 )
# Title: B. 価格の合計
# Language: Ruby (1.9.3)
# Submitted: 2015-08-28 10:13:04 +0000 UTC ( https://atcoder.jp/contests/abc014/submissions/478562 ) 

n, x = gets.chomp.split(" ").map(&:to_i)
prices = gets.chomp.split(" ").map(&:to_i)
s = sprintf("%0#{n}b", x)
res = 0
s.reverse.split("").each_with_index do |f, i|
  if f == "1" then
    res += prices[i]
  end
end
puts res
