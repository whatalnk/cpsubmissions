# Contest ID: abc116
# Problem ID: abc116_b ( https://atcoder.jp/contests/abc116/tasks/abc116_b )
# Title: B. Collatz Problem
# Language: Ruby (2.3.3)
# Submitted: 2019-01-22 12:13:14 +0000 UTC ( https://atcoder.jp/contests/abc116/submissions/4069150 ) 

s = gets.chomp.to_i

arr = Array.new(10**6 + 1, false)

i = 1
a = s
arr[a] = true
i += 1

while true
  if a.even?
    a /= 2
  else
    a = a * 3 + 1
  end
  if arr[a]
    puts i
    exit
  else
    arr[a] = true
  end
  i += 1
end
