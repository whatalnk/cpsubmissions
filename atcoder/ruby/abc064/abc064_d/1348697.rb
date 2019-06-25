# Contest ID: abc064
# Problem ID: abc064_d ( https://atcoder.jp/contests/abc064/tasks/abc064_d )
# Title: D. Insertion
# Language: Ruby (2.3.3)
# Submitted: 2017-06-11 04:14:11 +0000 UTC ( https://atcoder.jp/contests/abc064/submissions/1348697 ) 

n = gets.chomp.to_i
s = gets.chomp.split("")
paren = 0
append_first = 0
append_last = 0
s.each do |i|
  if i == "(" then
    paren += 1
  else
    paren -= 1
    if paren < 0 then
      paren = 0
      append_first += 1
    end
  end
end
append_last = paren

puts "(" * append_first + s.join("") + ")" * append_last
