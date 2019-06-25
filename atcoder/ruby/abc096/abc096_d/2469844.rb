# Contest ID: abc096
# Problem ID: abc096_d ( https://atcoder.jp/contests/abc096/tasks/abc096_d )
# Title: D. Five, Five Everywhere
# Language: Ruby (2.3.3)
# Submitted: 2018-05-05 15:21:55 +0000 UTC ( https://atcoder.jp/contests/abc096/submissions/2469844 ) 

require 'prime'

n = gets.chomp.to_i
ans = []

Prime.each(55555) do |prime|
  break if ans.size == n
  if prime % 5 == 1
    ans << prime
  end
end
puts ans.join(" ")