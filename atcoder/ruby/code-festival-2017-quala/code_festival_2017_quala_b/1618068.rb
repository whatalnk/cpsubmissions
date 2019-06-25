# Contest ID: code-festival-2017-quala
# Problem ID: code_festival_2017_quala_b ( https://atcoder.jp/contests/code-festival-2017-quala/tasks/code_festival_2017_quala_b )
# Title: B. fLIP
# Language: Ruby (2.3.3)
# Submitted: 2017-09-23 12:34:21 +0000 UTC ( https://atcoder.jp/contests/code-festival-2017-quala/submissions/1618068 ) 

n, m, k = gets.chomp.split(" ").map(&:to_i)
black = []
(0..n).each do |i|
  (0..m).each do |j|
    cnt = i * m + j * n - i * j * 2
    black << cnt
  end
end
if black.include?(k) then
  puts "Yes"
else
  puts "No"
end