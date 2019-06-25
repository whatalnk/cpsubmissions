# Contest ID: abc033
# Problem ID: abc033_c ( https://atcoder.jp/contests/abc033/tasks/abc033_c )
# Title: C. 数式の書き換え
# Language: Ruby (2.1.5p273)
# Submitted: 2016-02-06 12:33:31 +0000 UTC ( https://atcoder.jp/contests/abc033/submissions/629903 ) 

s = gets.chomp.split("+")

res = 0
s.each do |i|
  if i.length == 1 then
    if i != "0" then
      res += 1
    end
  else
    res += 1 if not i.include?("0")
  end
end

puts res
