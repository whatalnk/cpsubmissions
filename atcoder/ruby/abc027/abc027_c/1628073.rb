# Contest ID: abc027
# Problem ID: abc027_c ( https://atcoder.jp/contests/abc027/tasks/abc027_c )
# Title: C. 倍々ゲーム
# Language: Ruby (2.3.3)
# Submitted: 2017-09-25 14:07:14 +0000 UTC ( https://atcoder.jp/contests/abc027/submissions/1628073 ) 

n = gets.chomp.to_i
depth = 0
i = n
while i > 0
  depth += 1
  i /= 2
end

def game1(x, i)
  if i.even?
    return x * 2
  else
    return x * 2 + 1
  end
end

def game2(x, i)
  if i.even?
    return x * 2 + 1
  else
    return x * 2
  end
end

if depth.even?
  alias :game :game1
else
  alias :game :game2
end

i = 0
x = 1
while true
  nex = game(x, i)
  if nex > n then
    break
  else
    x = nex
    i += 1
  end
end

if i.even? 
  puts "Aoki"
else
  puts "Takahashi"
end