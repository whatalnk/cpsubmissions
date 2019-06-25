# Contest ID: abc093
# Problem ID: abc093_b ( https://atcoder.jp/contests/abc093/tasks/abc093_b )
# Title: B. Small and Large Integers
# Language: Ruby (2.3.3)
# Submitted: 2018-05-04 02:45:22 +0000 UTC ( https://atcoder.jp/contests/abc093/submissions/2452654 ) 

a, b, k = gets.chomp.split(" ").map(&:to_i)

if a + k < b - k + 1 then
  k.times do |i|
    puts a + i
  end
  k.times do |i|
    puts b - k + 1 + i
  end
else
  a.upto(b) do |i|
    puts i
  end
end