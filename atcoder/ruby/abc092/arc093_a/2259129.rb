# Contest ID: abc092
# Problem ID: arc093_a ( https://atcoder.jp/contests/abc092/tasks/arc093_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-03-25 12:44:33 +0000 UTC ( https://atcoder.jp/contests/abc092/submissions/2259129 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

asum = a[0].abs + a[n-1].abs
(n-1).times do |i|
  asum += (a[i + 1] - a[i]).abs
end

n.times do |i|
  if i == 0 then
    puts asum  - (a[1] - a[0]).abs - a[0].abs + a[1].abs
  elsif i == n -1
    puts asum - (a[n-1] - a[n-2]).abs - a[n - 1].abs + a[n - 2].abs
  else
    puts asum - (a[i + 1]- a[i]).abs - (a[i] - a[i - 1]).abs + (a[i + 1] - a[i - 1]).abs
  end
end
