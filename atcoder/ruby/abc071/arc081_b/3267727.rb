# Contest ID: abc071
# Problem ID: arc081_b ( https://atcoder.jp/contests/abc071/tasks/arc081_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-09-25 03:43:05 +0000 UTC ( https://atcoder.jp/contests/abc071/submissions/3267727 ) 

n = gets.chomp.to_i
s1 = gets.chomp
s2 = gets.chomp

MOD = 10**9 + 7
ans = 1
left = ""
right = ""
i = 0
loop do
  break if i >= n
  if i == 0
    if s1[i] == s2[i]
      ans *= 3
      left = "A"
      i += 1
    else
      ans *= 6
      left = "B"
      i += 2
    end
  else
    if s1[i] == s2[i]
      right = "A"
      i += 1
    else
      right = "B"
      i += 2
    end
    case left + right
    when "AA"
      ans *= 2
    when "AB"
      ans *= 2
    when "BA"
      ans *= 1
    when "BB"
      ans *= 3
    end
    ans %= MOD
    left = right
  end
end
puts ans % MOD