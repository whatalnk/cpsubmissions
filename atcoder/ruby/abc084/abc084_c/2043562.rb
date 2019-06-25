# Contest ID: abc084
# Problem ID: abc084_c ( https://atcoder.jp/contests/abc084/tasks/abc084_c )
# Title: C. Special Trains
# Language: Ruby (2.3.3)
# Submitted: 2018-01-31 11:37:46 +0000 UTC ( https://atcoder.jp/contests/abc084/submissions/2043562 ) 

# ABC084
# C. Special Trains
n = gets.chomp.to_i
c = []
s = []
f = []

(n-1).times do
  c_, s_, f_ = gets.chomp.split(" ").map(&:to_i)
  c << c_
  s << s_
  f << f_
end

n.times do |i|
  t = 0
  (i...(n-1)).each do |j|
    if t < s[j] then
      t = s[j]
    elsif t % f[j] == 0 then

    else
      t += (f[j] - t % f[j])
    end
    t += c[j]
  end
  puts t
end

