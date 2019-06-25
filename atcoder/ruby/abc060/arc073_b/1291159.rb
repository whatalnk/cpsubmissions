# Contest ID: abc060
# Problem ID: arc073_b ( https://atcoder.jp/contests/abc060/tasks/arc073_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-05-16 16:18:08 +0000 UTC ( https://atcoder.jp/contests/abc060/submissions/1291159 ) 

N, W = gets.chomp.split(" ").map(&:to_i)
k1 = []
k2 = []
k3 = []
k4 = []
w1, v1 = gets.chomp.split(" ").map(&:to_i)
k1 << v1
(N - 1).times do
  w, v = gets.chomp.split(" ").map(&:to_i)
  case w
    when w1
      k1 << v
    when w1 + 1
      k2 << v
    when w1 + 2
      k3 << v
    when w1 + 3
      k4 << v
  end
end
k1.sort_by!{|a| -a}
(k1.length - 1).times do |i|
  k1[i+1] += k1[i]
end
k2.sort_by!{|a| -a}
(k2.length - 1).times do |i|
  k2[i+1] += k2[i]
end
k3.sort_by!{|a| -a}
(k3.length - 1).times do |i|
  k3[i+1] += k3[i]
end
k4.sort_by!{|a| -a}
(k4.length - 1).times do |i|
  k4[i+1] += k4[i]
end

def take(ary, n)
  if n == 0 then
    return 0
  else
    return ary[n-1]
  end
end

sum = 0
(k1.length + 1).times do |i|
  (k2.length + 1).times do |j|
    (k3.length + 1).times do |k|
      (k4.length + 1).times do |l|
        if w1 * i + (w1 + 1) * j + (w1 + 2) * k + (w1 + 3) * l <= W then
          sum = [sum, take(k1, i) + take(k2, j) + take(k3, k) + take(k4, l)].max
        end
      end
    end
  end
end

puts sum