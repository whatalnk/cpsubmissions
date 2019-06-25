# Contest ID: abc122
# Problem ID: abc122_c ( https://atcoder.jp/contests/abc122/tasks/abc122_c )
# Title: C. GeT AC
# Language: Ruby (2.3.3)
# Submitted: 2019-04-18 11:36:17 +0000 UTC ( https://atcoder.jp/contests/abc122/submissions/5017685 ) 

n, q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
ss = Array.new(n-1, 0)
(n-1).times do |i|
  if s[i..(i+1)] == "AC"
    ss[i] = 1
  end
end

sss = Array.new(n, 0)
(n - 1).times do |i|
  sss[i+1] = sss[i] + ss[i]
end

q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  puts sss[r-1] - sss[l-1]
end