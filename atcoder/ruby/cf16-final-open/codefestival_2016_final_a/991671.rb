# Contest ID: cf16-final-open
# Problem ID: codefestival_2016_final_a ( https://atcoder.jp/contests/cf16-final-open/tasks/codefestival_2016_final_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2016-11-26 03:36:42 +0000 UTC ( https://atcoder.jp/contests/cf16-final-open/submissions/991671 ) 

h, w = gets.chomp.split(" ").map(&:to_i)
rn = ('A'..'Z').to_a
h.times do |i|
  row = gets.chomp.split(" ")
  col = row.index("snuke")
  if !(col.nil?) then
    puts "#{rn[col]}#{i+1}"
    exit
  end
end