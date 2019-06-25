# Contest ID: abc011
# Problem ID: abc011_3 ( https://atcoder.jp/contests/abc011/tasks/abc011_3 )
# Title: C. 123引き算
# Language: Ruby (1.9.3)
# Submitted: 2015-09-16 11:53:27 +0000 UTC ( https://atcoder.jp/contests/abc011/submissions/495482 ) 

n = gets.chomp.to_i
ngs = []
3.times{ngs << gets.chomp.to_i}
if ngs.include?(n) then
  puts "NO"
else
  100.times do
    if n >= 3 && !ngs.include?(n-3) then
      n -= 3
    elsif n >= 2 && !ngs.include?(n-2) then
      n -= 2
    elsif n >= 1 && !ngs.include?(n-1) then
      n -= 1
    else
      break
    end
    if n == 0 then
      puts "YES"
      break
    end
  end
  puts "NO" if n != 0
end
