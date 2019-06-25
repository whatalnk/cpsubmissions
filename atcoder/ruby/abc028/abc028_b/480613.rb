# Contest ID: abc028
# Problem ID: abc028_b ( https://atcoder.jp/contests/abc028/tasks/abc028_b )
# Title: B. 文字数カウント
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-29 12:47:58 +0000 UTC ( https://atcoder.jp/contests/abc028/submissions/480613 ) 

s = gets.chomp
a,b,c,d,e,f = Array.new(6, 0)
s.split("").each do |i|
  case i
  when "A" then a += 1
  when "B" then b += 1
  when "C" then c += 1
  when "D" then d += 1
  when "E" then e += 1
  when "F" then f += 1
  end
end
puts "#{a} #{b} #{c} #{d} #{e} #{f}\n"
