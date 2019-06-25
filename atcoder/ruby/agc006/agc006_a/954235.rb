# Contest ID: agc006
# Problem ID: agc006_a ( https://atcoder.jp/contests/agc006/tasks/agc006_a )
# Title: A. Prefix and Suffix
# Language: Ruby (2.3.3)
# Submitted: 2016-10-29 12:14:42 +0000 UTC ( https://atcoder.jp/contests/agc006/submissions/954235 ) 

n = gets.chomp.to_i
s = gets.chomp
t = gets.chomp

ncommon = 0
n.downto(1) do |i|
  if s[(n - i)..(n - 1)] == t[0..(i - 1)] then
    ncommon = i
    break
  end
end
puts (n - ncommon) * 2 + ncommon