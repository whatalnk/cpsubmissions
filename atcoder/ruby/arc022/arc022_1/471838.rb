# Contest ID: arc022
# Problem ID: arc022_1 ( https://atcoder.jp/contests/arc022/tasks/arc022_1 )
# Title: A. スーパーICT高校生
# Language: Ruby (1.9.3)
# Submitted: 2015-08-16 08:56:19 +0000 UTC ( https://atcoder.jp/contests/arc022/submissions/471838 ) 

s = gets.chomp

i = s =~ /i/i
c = []
t = []
s.split("").each_with_index do |x,y|
  c << y if x =~ /c/i
  t << y if x =~ /t/i
end

if i.nil? or c.empty? or t.empty? then
  flag = false
else
  c.each do |y|
    if y.between?(i, t.max) then
      flag = true
      break
    else
      flag = false
    end
  end
end

if flag then
  puts "YES"
else
  puts "NO"
end