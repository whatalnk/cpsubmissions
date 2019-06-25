# Contest ID: code-festival-2015-qualb
# Problem ID: codefestival_2015_qualB_b ( https://atcoder.jp/contests/code-festival-2015-qualb/tasks/codefestival_2015_qualB_b )
# Title: B. 採点/Grading
# Language: Ruby (2.1.5p273)
# Submitted: 2015-11-07 09:43:50 +0000 UTC ( https://atcoder.jp/contests/code-festival-2015-qualb/submissions/558504 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
dic = Hash.new(0)
ans = false
gets.chomp.split(" ").map(&:to_i).each do |a|
  dic[a] += 1
  if dic[a] > n/2 then
    ans = a
  end
end
if ans then
  puts ans
else
  puts "?"
end
