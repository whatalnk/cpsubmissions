# Contest ID: arc037
# Problem ID: arc037_a ( https://atcoder.jp/contests/arc037/tasks/arc037_a )
# Title: A. 全優
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-25 10:59:28 +0000 UTC ( https://atcoder.jp/contests/arc037/submissions/477280 ) 

n = gets.chomp.to_i
m = gets.chomp.split(" ").map(&:to_i)
res = 0
m.each do |s|
  if s < 80 then
    res += 80 - s
  end
end
puts res