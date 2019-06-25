# Contest ID: agc028
# Problem ID: agc028_a ( https://atcoder.jp/contests/agc028/tasks/agc028_a )
# Title: A. Two Abbreviations
# Language: Ruby (2.3.3)
# Submitted: 2018-10-14 07:40:37 +0000 UTC ( https://atcoder.jp/contests/agc028/submissions/3403915 ) 

n, m = gets.chomp.split(" ").map(&:to_i)

s = gets.chomp
t = gets.chomp

l = n.lcm(m)

x = Hash.new(nil)

n.times do |i|
  j = i * (l / n)
  x[j] = s[i]
end

m.times do |i|
  j = i * (l / m)
  if !x[j].nil?
    if x[j] != t[i]
      puts -1
      exit
    end
  end
end

puts l