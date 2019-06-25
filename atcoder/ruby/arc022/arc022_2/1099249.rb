# Contest ID: arc022
# Problem ID: arc022_2 ( https://atcoder.jp/contests/arc022/tasks/arc022_2 )
# Title: B. 細長いお菓子
# Language: Ruby (1.9.3)
# Submitted: 2017-02-07 02:06:22 +0000 UTC ( https://atcoder.jp/contests/arc022/submissions/1099249 ) 

n = gets.chomp.to_i
aa = gets.chomp.split(" ").map(&:to_i)
  
ret = []
h = Hash.new(false)
l = 0
r = 0
while r < n
  if h[aa[r]]
    h[aa[l]] = false
    l += 1
  else
    h[aa[r]] = true
    r += 1
  end
  ret << r - l
end
  
puts ret.max