# Contest ID: abc024
# Problem ID: abc024_c ( https://atcoder.jp/contests/abc024/tasks/abc024_c )
# Title: C. 民族大移動
# Language: Ruby (2.3.3)
# Submitted: 2017-09-27 08:35:20 +0000 UTC ( https://atcoder.jp/contests/abc024/submissions/1630780 ) 

n, d, k = gets.chomp.split(" ").map(&:to_i)
lr = []
d.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  lr << [l, r]
end

k.times do
  s, t = gets.chomp.split(" ").map(&:to_i)
  curr = s
  ans = 0
  lr.each do |l, r|
    if l <= curr && r >= curr then
      if l <= t && r >= t then
        ans += 1
        break
      end
      if (t - l).abs < (t - r).abs then
        curr = l
      else
        curr = r
      end
    end
    ans += 1
  end
  puts ans
end
