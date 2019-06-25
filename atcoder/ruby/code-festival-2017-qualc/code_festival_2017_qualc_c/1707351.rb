# Contest ID: code-festival-2017-qualc
# Problem ID: code_festival_2017_qualc_c ( https://atcoder.jp/contests/code-festival-2017-qualc/tasks/code_festival_2017_qualc_c )
# Title: C. Inserting 'x'
# Language: Ruby (2.3.3)
# Submitted: 2017-10-23 09:12:18 +0000 UTC ( https://atcoder.jp/contests/code-festival-2017-qualc/submissions/1707351 ) 

s = gets.chomp
n = s.length
l = 0
r = n - 1
ans = 0
while true
  break if l >= r
  if s[l] == "x" && s[r] == "x"
    l += 1
    r -= 1
  elsif s[l] == "x" && s[r] != "x"
    ans += 1
    l += 1
  elsif s[l] != "x" && s[r] == "x"
    ans += 1
    r -= 1
  else
    if s[l] == s[r]
      l += 1
      r -= 1
    else
      puts -1
      exit
    end
  end
end
puts ans
