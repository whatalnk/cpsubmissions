# Contest ID: abc097
# Problem ID: arc097_a ( https://atcoder.jp/contests/abc097/tasks/arc097_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-08-24 05:19:02 +0000 UTC ( https://atcoder.jp/contests/abc097/submissions/3064661 ) 

s = gets.chomp.split("")
k = gets.chomp.to_i

substr = []
1.upto(s.length) do |n|
  break if n > k
  a = []
  s.each_cons(n) do |ss|
    a << ss.join("")
  end
  a.uniq!
  substr += a
end
substr.sort!

puts substr[k-1]