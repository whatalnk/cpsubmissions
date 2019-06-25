# Contest ID: chokudai_S001
# Problem ID: chokudai_S001_f ( https://atcoder.jp/contests/chokudai_S001/tasks/chokudai_S001_f )
# Title: F. 見える数
# Language: Ruby (2.3.3)
# Submitted: 2017-07-28 12:28:14 +0000 UTC ( https://atcoder.jp/contests/chokudai_S001/submissions/1458753 ) 

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
ret = 1
amax = arr[0]
(1...n).each do |i|
  ret += 1 if amax < arr[i]
  amax = [amax, arr[i]].max
end
puts ret