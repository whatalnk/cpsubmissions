# Contest ID: abc045
# Problem ID: arc061_b ( https://atcoder.jp/contests/abc045/tasks/arc061_b )
# Title: D. すぬけ君の塗り絵 / Snuke's Coloring
# Language: Ruby (2.3.3)
# Submitted: 2018-09-17 14:37:10 +0000 UTC ( https://atcoder.jp/contests/abc045/submissions/3217546 ) 

# ABC045 D
h, w, n = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new(0)
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  a -= 1
  b -= 1
  (a-2).upto(a) do |i|
    (b-2).upto(b) do |j|
      if i >= 0 && i + 2 < h && j >= 0 && j + 2 < w
        x = [i, j]
        hash[x] += 1
      end
    end
  end
end
ans = Array.new(10, 0)
s = 0
hash.each do |k, v|
  ans[v] += 1
  s += 1
end

ans[0] = (h - 2) * (w - 2) - s
ans.each{|x| puts x}