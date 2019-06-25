# Contest ID: abc124
# Problem ID: abc124_b ( https://atcoder.jp/contests/abc124/tasks/abc124_b )
# Title: B. Great Ocean View
# Language: Ruby (2.3.3)
# Submitted: 2019-04-13 12:08:10 +0000 UTC ( https://atcoder.jp/contests/abc124/submissions/4943539 ) 

n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)
h = [0] + h

ret = 0
n.times do |i|
  if h[0..i].map{|x| x <= h[i+1]}.all?
    ret += 1
  end
end

puts ret