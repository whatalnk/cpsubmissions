# Contest ID: abc077
# Problem ID: arc084_a ( https://atcoder.jp/contests/abc077/tasks/arc084_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-11-04 16:08:19 +0000 UTC ( https://atcoder.jp/contests/abc077/submissions/1745315 ) 

N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i).sort
B = gets.chomp.split(" ").map(&:to_i).sort
C = gets.chomp.split(" ").map(&:to_i).sort

memo = Array.new(N, 0)
N.times do |ib|
  ic = C.bsearch_index{|x| x > B[ib]}
  next if ic.nil?
  memo[ib] = (N - ic)
end

(N-1).downto(1) do |i|
  memo[i - 1] += memo[i]
end

ans = 0

A.each do |a|
  ib = B.bsearch_index{|x| x > a}
  next if ib.nil?
  ans += memo[ib]
end
puts ans