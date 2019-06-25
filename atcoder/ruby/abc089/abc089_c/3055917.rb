# Contest ID: abc089
# Problem ID: abc089_c ( https://atcoder.jp/contests/abc089/tasks/abc089_c )
# Title: C. March
# Language: Ruby (2.3.3)
# Submitted: 2018-08-22 03:31:02 +0000 UTC ( https://atcoder.jp/contests/abc089/submissions/3055917 ) 

n = gets.chomp.to_i

h = Hash.new(0)
n.times do
  s = gets.chomp
  if s.start_with?("M", "A", "R", "C", "H")
    h[s[0]] += 1
  end
end

ans = 0
if h.keys.length < 3
  ans = 0
else
  h.keys.combination(3) do |a, b, c|
    ans += h[a] * h[b] *  h[c]
  end
end

puts ans