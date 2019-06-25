# Contest ID: abc047
# Problem ID: abc047_b ( https://atcoder.jp/contests/abc047/tasks/abc047_b )
# Title: B. すぬけ君の塗り絵 2 イージー / Snuke's Coloring 2 (ABC Edit)
# Language: Ruby (2.3.3)
# Submitted: 2016-11-06 12:27:07 +0000 UTC ( https://atcoder.jp/contests/abc047/submissions/971377 ) 

w, h, n = gets.chomp.split(" ").map(&:to_i)
mm = Array.new(h){Array.new(w,  true)}
n.times do
  x, y, a = gets.chomp.split(" ").map(&:to_i)
  x -= 1
  y -= 1
  case a
  when 1
    h.times do |i|
      w.times do |j|
        mm[i][j] = false if j <= x
      end
    end
  when 2
    h.times do |i|
      w.times do |j|
        mm[i][j] = false if j > x
      end
    end
  when 3
    h.times do |i|
      if i <= y then
        mm[i] = [false] * w
      end
    end
  when 4
    h.times do |i|
      if i > y then
        mm[i] = [false] * w
      end
    end
  end
end

puts mm.flatten.count{|x| x}
