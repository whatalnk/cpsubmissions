# Contest ID: dwacon2018-prelims
# Problem ID: dwacon2018_prelims_b ( https://atcoder.jp/contests/dwacon2018-prelims/tasks/dwacon2018_prelims_b )
# Title: B. 2525文字列分解
# Language: Ruby (2.3.3)
# Submitted: 2019-05-06 10:10:30 +0000 UTC ( https://atcoder.jp/contests/dwacon2018-prelims/submissions/5290835 ) 

a = []
b = []
s = gets.chomp
n = s.length
n.times do |i|
  if s[i] == "2"
    if b.empty?
      a << 1
    else
      x = b.pop
      a << x
    end
  else
    if a.empty?
      puts -1
      exit
    else
      x = a.pop
      b << x
    end
  end
end
if a.empty?
  puts b.length
else
  puts -1
end