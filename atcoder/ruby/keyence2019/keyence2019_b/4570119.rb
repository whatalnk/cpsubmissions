# Contest ID: keyence2019
# Problem ID: keyence2019_b ( https://atcoder.jp/contests/keyence2019/tasks/keyence2019_b )
# Title: B. KEYENCE String
# Language: Ruby (2.3.3)
# Submitted: 2019-03-13 13:35:48 +0000 UTC ( https://atcoder.jp/contests/keyence2019/submissions/4570119 ) 

s = gets.chomp

if s == "keyence"
  puts "YES"
  exit
end

l = s.length
l.times do |i|
  (l-i).times do |j|
    x = s[i..(i + j)]
    if s.sub(x, "") == "keyence"
      puts "YES"
      exit
    end
  end
end
puts "NO"