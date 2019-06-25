# Contest ID: code-festival-2017-qualc
# Problem ID: code_festival_2017_qualc_b ( https://atcoder.jp/contests/code-festival-2017-qualc/tasks/code_festival_2017_qualc_b )
# Title: B. Similar Arrays
# Language: Ruby (2.3.3)
# Submitted: 2017-10-22 12:13:13 +0000 UTC ( https://atcoder.jp/contests/code-festival-2017-qualc/submissions/1700973 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
odd = 1
a.each do |x|
  if x.even?
    odd *= 2
  end
end
puts 3**n - odd