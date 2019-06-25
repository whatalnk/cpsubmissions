# Contest ID: abc112
# Problem ID: abc112_b ( https://atcoder.jp/contests/abc112/tasks/abc112_b )
# Title: B. Time Limit Exceeded
# Language: Ruby (2.3.3)
# Submitted: 2018-10-08 08:10:30 +0000 UTC ( https://atcoder.jp/contests/abc112/submissions/3368025 ) 

n, t = gets.chomp.split(" ").map(&:to_i)

a = []
n.times do
  a << gets.chomp.split(" ").map(&:to_i)
end

a.sort_by!{|x| x[0]}

a.each do |x|
  if x[1] <= t
    puts x[0]
    exit
  end
end

puts "TLE"