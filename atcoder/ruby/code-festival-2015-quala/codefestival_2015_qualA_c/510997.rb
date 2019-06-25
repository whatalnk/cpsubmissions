# Contest ID: code-festival-2015-quala
# Problem ID: codefestival_2015_qualA_c ( https://atcoder.jp/contests/code-festival-2015-quala/tasks/codefestival_2015_qualA_c )
# Title: C. 8月31日
# Language: Ruby (2.1.5p273)
# Submitted: 2015-09-26 12:38:15 +0000 UTC ( https://atcoder.jp/contests/code-festival-2015-quala/submissions/510997 ) 

n, t = gets.chomp.split(" ").map(&:to_i)
hw = []
a0 = 0
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  c = a - b
  hw << [a, b, c]
  a0 += a
end
hw2 =  hw.sort {|a, b|
  a[2] <=> b[2]
}.reverse
res = 0
while a0 > t
  if hw2.empty?
    res = -1
    break
  end
  a0 -= hw2.shift[2]
  res += 1
end
puts res