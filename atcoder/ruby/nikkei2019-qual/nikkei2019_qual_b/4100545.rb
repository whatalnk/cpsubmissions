# Contest ID: nikkei2019-qual
# Problem ID: nikkei2019_qual_b ( https://atcoder.jp/contests/nikkei2019-qual/tasks/nikkei2019_qual_b )
# Title: B. Touitsu
# Language: Ruby (2.3.3)
# Submitted: 2019-01-27 12:13:22 +0000 UTC ( https://atcoder.jp/contests/nikkei2019-qual/submissions/4100545 ) 

n = gets.chomp.to_i
a = gets.chomp
b = gets.chomp
c = gets.chomp

ans = 0

n.times do |i|
  if a[i] == b[i] 
    if b[i] == c[i]
      next
    else
      ans += 1
    end
  else # a[i] != b[i]
    if a[i] == c[i]
      ans += 1
    elsif b[i] == c[i]
      ans += 1
    else
      ans += 2
    end
  end
end

puts ans
