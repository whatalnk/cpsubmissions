# Contest ID: abc015
# Problem ID: abc015_3 ( https://atcoder.jp/contests/abc015/tasks/abc015_3 )
# Title: C. 高橋くんのバグ探し
# Language: Ruby (1.9.3)
# Submitted: 2014-11-22 17:15:27 +0000 UTC ( https://atcoder.jp/contests/abc015/submissions/283801 ) 

$n, $k = gets.chomp.split(" ").map(&:to_i)
$t = Array.new
$n.times do
  $t << gets.chomp.split(" ").map(&:to_i)
end

def dfs(nq, val)
  return val == 0 if nq == $n
  (0...$k).each do |i|
    return TRUE if dfs(nq+1, val^$t[nq][i])
  end
  return FALSE
end

if dfs(0, 0) then
  puts "Found"
else
  puts "Nothing"
end
