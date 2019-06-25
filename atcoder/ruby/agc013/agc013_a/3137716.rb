# Contest ID: agc013
# Problem ID: agc013_a ( https://atcoder.jp/contests/agc013/tasks/agc013_a )
# Title: A. Sorted Arrays
# Language: Ruby (2.3.3)
# Submitted: 2018-09-05 03:33:38 +0000 UTC ( https://atcoder.jp/contests/agc013/submissions/3137716 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

if n == 1 || n == 2
  puts 1
  exit
end

ans = 0
b = []
a.each do |c|
  if b.empty?
    b << c
    ans += 1
  elsif b.length == 1
    b << c
  else 
    if (b[-1] - b[0]) * (c - b[-1]) >= 0
      b << c
    else
      b = [c]
      ans += 1
    end
  end
end
puts ans