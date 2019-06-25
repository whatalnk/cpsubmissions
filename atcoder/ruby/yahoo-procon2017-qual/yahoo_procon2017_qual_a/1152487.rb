# Contest ID: yahoo-procon2017-qual
# Problem ID: yahoo_procon2017_qual_a ( https://atcoder.jp/contests/yahoo-procon2017-qual/tasks/yahoo_procon2017_qual_a )
# Title: A. Yahoo
# Language: Ruby (2.3.3)
# Submitted: 2017-03-09 08:30:50 +0000 UTC ( https://atcoder.jp/contests/yahoo-procon2017-qual/submissions/1152487 ) 

h = Hash.new(0)
gets.chomp.split("").each do |s|
  h[s] += 1
end
if h["y"] == 1 && h["a"] == 1 && h["h"] == 1 && h["o"] == 2 then
  puts "YES"
else
  puts "NO"
end
