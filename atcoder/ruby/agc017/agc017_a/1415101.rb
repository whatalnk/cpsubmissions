# Contest ID: agc017
# Problem ID: agc017_a ( https://atcoder.jp/contests/agc017/tasks/agc017_a )
# Title: A. Biscuits
# Language: Ruby (2.3.3)
# Submitted: 2017-07-10 14:52:48 +0000 UTC ( https://atcoder.jp/contests/agc017/submissions/1415101 ) 

n, p_ = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

ne = 0
no = 0
a.each do |i|
  if i.even? then
    ne += 1
  else
    no += 1
  end
end

if no == 0 then
  if p_ == 0
    puts 2 ** n
  else
    puts 0
  end
else
  puts 2 ** (n - 1)
end
