# Contest ID: colopl2018-final-open
# Problem ID: colopl2018_final_a ( https://atcoder.jp/contests/colopl2018-final-open/tasks/colopl2018_final_a )
# Title: A. ファイティング・タカハシ
# Language: Ruby (2.3.3)
# Submitted: 2019-05-06 06:54:01 +0000 UTC ( https://atcoder.jp/contests/colopl2018-final-open/submissions/5288571 ) 

n = gets.chomp.to_i
s = gets.chomp
a = []
num = 0
s.length.times do |j|
  if s[j] == "A"
    num += 1
  else
    a << num
    num = 0
  end
end
a << num 

h = Hash.new(0)
a.each do |x|
  h[x] += n
end

h[a.first] -= n - 1
h[a.last] -= n - 1
h[a.first + a.last] += n - 1

ans = 0
h.each do |k, v|
  ans += k * (k + 1) * v / 2
end

if s[0] == "A" && a.length == 1
  puts (s.length * n) * (s.length * n + 1) / 2
else
  puts ans
end