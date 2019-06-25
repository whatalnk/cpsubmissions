# Contest ID: abc018
# Problem ID: abc018_1 ( https://atcoder.jp/contests/abc018/tasks/abc018_1 )
# Title: A. 豆まき
# Language: Ruby (1.9.3)
# Submitted: 2015-07-29 09:50:44 +0000 UTC ( https://atcoder.jp/contests/abc018/submissions/456994 ) 

ary = []
while line = gets
  ary << line.chomp.to_i
end
nmax = ary.max
nmin = ary.min
ary.each do |e|
  if e == nmax then
    puts 1
  elsif e == nmin then
    puts 3
  else
    puts 2
  end
end
