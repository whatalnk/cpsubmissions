# Contest ID: chokudai_S001
# Problem ID: chokudai_S001_h ( https://atcoder.jp/contests/chokudai_S001/tasks/chokudai_S001_h )
# Title: H. LIS
# Language: Ruby (2.3.3)
# Submitted: 2017-07-29 05:02:30 +0000 UTC ( https://atcoder.jp/contests/chokudai_S001/submissions/1460969 ) 

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

arr2 = Array.new(n+1, 10**6)

ret = 0
arr.each do |a|
  i = arr2.bsearch_index{|x| x > a}
  if i.nil? then
    i = 0
  end
  arr2[i] = a
  ret = [ret, i].max
end

puts ret + 1