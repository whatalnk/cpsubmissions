# Contest ID: abc119
# Problem ID: abc119_a ( https://atcoder.jp/contests/abc119/tasks/abc119_a )
# Title: A. Still TBD
# Language: Ruby (2.3.3)
# Submitted: 2019-02-24 12:05:23 +0000 UTC ( https://atcoder.jp/contests/abc119/submissions/4368290 ) 

y, m, d =  gets.chomp.split("/").map(&:to_i)
if y < 2019
  puts "Heisei"
  exit
elsif y <= 2019
  if m <= 4
    puts "Heisei"
    exit
  else
    puts "TBD"
    exit
  end
else
  puts "TBD"
  exit
end