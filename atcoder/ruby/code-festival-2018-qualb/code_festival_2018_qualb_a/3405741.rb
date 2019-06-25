# Contest ID: code-festival-2018-qualb
# Problem ID: code_festival_2018_qualb_a ( https://atcoder.jp/contests/code-festival-2018-qualb/tasks/code_festival_2018_qualb_a )
# Title: A. Probability of Participation
# Language: Ruby (2.3.3)
# Submitted: 2018-10-14 12:02:26 +0000 UTC ( https://atcoder.jp/contests/code-festival-2018-qualb/submissions/3405741 ) 

n = gets.chomp.to_i
ans = 0
1.upto(100) do |i|
  if i % n == 0
    ans += 1
  end
end

puts 100 - ans