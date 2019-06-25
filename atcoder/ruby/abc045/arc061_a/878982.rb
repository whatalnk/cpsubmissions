# Contest ID: abc045
# Problem ID: arc061_a ( https://atcoder.jp/contests/abc045/tasks/arc061_a )
# Title: C. たくさんの数式 / Many Formulas
# Language: Ruby (2.3.3)
# Submitted: 2016-09-11 16:56:26 +0000 UTC ( https://atcoder.jp/contests/abc045/submissions/878982 ) 

s = gets.chomp.split("").map(&:to_i)
n = s.size
 
def base10(arr)
  n = arr.size - 1
  return n.downto(0).map{|x| arr[n - x]*10**x}.inject(:+)
end
 
if n == 1 then
  puts s[0]
else
  ans = [base10(s)]
  idxar = (1..(n-1)).to_a
  (1..(n-1)).each do |i|
    idxar.combination(i).each do |x|
      x = [0] + x + [n]
      ans << x.each_cons(2).map{|from, to| s.slice(from, (to - from))}.map{|arr| base10(arr)}.inject(:+)
    end
  end
  puts ans.inject(:+)
end
