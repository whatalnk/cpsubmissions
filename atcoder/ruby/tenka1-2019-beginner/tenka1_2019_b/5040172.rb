# Contest ID: tenka1-2019-beginner
# Problem ID: tenka1_2019_b ( https://atcoder.jp/contests/tenka1-2019-beginner/tasks/tenka1_2019_b )
# Title: B. *e**** ********e* *e****e* ****e**
# Language: Ruby (2.3.3)
# Submitted: 2019-04-20 12:07:52 +0000 UTC ( https://atcoder.jp/contests/tenka1-2019-beginner/submissions/5040172 ) 

n = gets.chomp.to_i
s = gets.chomp
k = gets.chomp.to_i

x = s[k - 1]

ret = []
n.times do |i|
  if s[i] == x
    ret << s[i]
  else
    ret << "*"
  end
end

puts ret.join("")
