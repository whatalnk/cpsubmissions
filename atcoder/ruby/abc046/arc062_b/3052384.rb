# Contest ID: abc046
# Problem ID: arc062_b ( https://atcoder.jp/contests/abc046/tasks/arc062_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-08-21 06:55:05 +0000 UTC ( https://atcoder.jp/contests/abc046/submissions/3052384 ) 

s = gets.chomp.split("")

n = s.length

ans = 0

n.times do |i|
  if (i + 1).odd?
    if s[i] == 'p'
      ans -= 1
    end
  else
    if s[i] == 'g'
      ans += 1
    end
  end
end

puts ans