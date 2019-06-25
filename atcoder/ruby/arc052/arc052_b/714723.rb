# Contest ID: arc052
# Problem ID: arc052_b ( https://atcoder.jp/contests/arc052/tasks/arc052_b )
# Title: B. 円錐
# Language: Ruby (2.3.3)
# Submitted: 2016-05-01 16:21:50 +0000 UTC ( https://atcoder.jp/contests/arc052/submissions/714723 ) 

n, q = gets.chomp.split(" ").map(&:to_i)
cones = []
n.times do
  x, r, h = gets.chomp.split(" ").map(&:to_i)
  cones << [x, r, h]
end
q.times do
  ans = 0
  a, b = gets.chomp.split(" ").map(&:to_i)
  cones.each do |params|
    x, r, h = params
    next if x > b or x + h < a
    ha = [x + h - a, h].min.to_f
    ra = r * ha / h
    hb = [x + h - b, 0].max.to_f
    rb = r * hb / h
    ans += (ra**2*ha - rb**2*hb)
  end
  puts ans * Math::PI / 3
end
