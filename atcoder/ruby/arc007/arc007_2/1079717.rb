# Contest ID: arc007
# Problem ID: arc007_2 ( https://atcoder.jp/contests/arc007/tasks/arc007_2 )
# Title: B. 迷子のCDケース
# Language: Ruby (1.9.3)
# Submitted: 2017-01-27 03:28:53 +0000 UTC ( https://atcoder.jp/contests/arc007/submissions/1079717 ) 

n, m = gets.chomp.split.map(&:to_i)

# {disk => case_}
# h =  (0..n).to_a.zip((0..n).to_a).map{|x| x}.to_h # not work on ruby 1.9
h =  (0..n).to_a.zip((0..n).to_a).map{|x| x}.flatten
h = Hash[*h]

# now listening
curr = 0
m.times do
  # disk to listen next
  disk = gets.chomp.to_i
  # which case to use next
  case_ = h[disk]
  # return to case
  h[curr] = case_
  # change next disk
  curr = disk
end

# sort by case, select disk
ret =  h.sort{|a, b| a[1] <=> b[1]}.map{|x| x[0]}
# delete now listening
ret.delete(curr)
# print disk
puts ret