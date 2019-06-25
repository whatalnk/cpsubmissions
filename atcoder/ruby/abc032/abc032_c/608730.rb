# Contest ID: abc032
# Problem ID: abc032_c ( https://atcoder.jp/contests/abc032/tasks/abc032_c )
# Title: C. 列
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-09 15:21:46 +0000 UTC ( https://atcoder.jp/contests/abc032/submissions/608730 ) 

# Submission #606429
n, k = gets.chomp.split(" ").map(&:to_i)
ss = readlines.map(&:to_i)

if ss.include?(0) then
  puts n
  exit
end


left = 0
right = 0
res = 0
num = ss[0]
while true
  if num <= k then
    res = [res, right - left + 1].max
    if right < n - 1 then
      right += 1
      num *= ss[right]
    else
      break
    end
  else
    if right >= n - 1 then
      break
    elsif left == right then
      left += 1
      right += 1
      num = ss[left]
    else 
      num /= ss[left]
      left += 1
    end
  end
end
puts res
