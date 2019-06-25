# Contest ID: dwacon5th-prelims
# Problem ID: dwacon5th_prelims_a ( https://atcoder.jp/contests/dwacon5th-prelims/tasks/dwacon5th_prelims_a )
# Title: A. Thumbnail
# Language: Ruby (2.3.3)
# Submitted: 2019-03-11 09:23:55 +0000 UTC ( https://atcoder.jp/contests/dwacon5th-prelims/submissions/4550312 ) 

N = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_f)
mean = a.inject(:+) / N

b = a.map{|x| (x - mean).abs}

bmin = b.max
ans = 0

b.each_with_index do |x, i|
  if x < bmin
    bmin = x
    ans = i
  end
end
puts ans 