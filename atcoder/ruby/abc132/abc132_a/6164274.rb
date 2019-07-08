# Contest ID: abc132
# Problem ID: abc132_a ( https://atcoder.jp/contests/abc132/tasks/abc132_a )
# Title: A. Fifty-Fifty
# Language: Ruby (2.3.3)
# Submitted: 2019-06-29 12:09:15 +0000 UTC ( https://atcoder.jp/contests/abc132/submissions/6164274 ) 

h = Hash.new(0)
s = gets.chomp
4.times do |i|
  h[s[i]] += 1
end
if h.keys.length != 2
    puts "No"
    exit
end
h.values.each do |e|
    if e != 2
        puts "No"
        exit
    end
end
puts "Yes"