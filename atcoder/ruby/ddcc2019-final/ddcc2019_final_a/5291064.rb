# Contest ID: ddcc2019-final
# Problem ID: ddcc2019_final_a ( https://atcoder.jp/contests/ddcc2019-final/tasks/ddcc2019_final_a )
# Title: A. レース (Race)
# Language: Ruby (2.3.3)
# Submitted: 2019-05-06 10:33:31 +0000 UTC ( https://atcoder.jp/contests/ddcc2019-final/submissions/5291064 ) 

n = gets.chomp.to_i
s = gets.chomp

snow = []
ice = []
cnt = 1
cur = "-"
(n - 1).times do |i|
  if s[i + 1] == "-"
    if cur == "-"
      cnt += 1
    else
      cur = "-"
      ice << cnt
      cnt = 1
    end
  else
    if cur == ">"
      cnt += 1
    else
      cur = ">"
      snow << cnt
      cnt = 1
    end
  end
end
snow << cnt
ans = 0.0
snow.each do |i|
  ans += i
end
if ice.empty?
  ice << 0
end
ice.each do |i|
  i.times do |j|
    ans += (1.0 / (2 + j))
  end
end

ans -= 1
ans += 1.0 / (ice.max + 2)

puts ans
