# Contest ID: abc124
# Problem ID: abc124_c ( https://atcoder.jp/contests/abc124/tasks/abc124_c )
# Title: C. Coloring Colorfully
# Language: Ruby (2.3.3)
# Submitted: 2019-04-13 12:16:39 +0000 UTC ( https://atcoder.jp/contests/abc124/submissions/4947260 ) 

s = gets.chomp
n = s.length
a = 0
n.times do |i|
  if i.even?
    if s[i] != "0"
      a += 1
    end
  else
    if s[i] != "1"
      a += 1
    end
  end
end

b = 0
n.times do |i|
  if i.even?
    if s[i] != "1"
      b += 1
    end
  else
    if s[i] != "0"
      b += 1
    end
  end
end

puts [a, b].min