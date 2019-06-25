# Contest ID: arc045
# Problem ID: arc045_a ( https://atcoder.jp/contests/arc045/tasks/arc045_a )
# Title: A. スペース高橋君
# Language: Ruby (2.1.5p273)
# Submitted: 2015-10-10 12:04:57 +0000 UTC ( https://atcoder.jp/contests/arc045/submissions/523359 ) 

s = gets.chomp.split(" ")
res = []
s.each do |i|
  case i
  when "Left" then res << "<"
  when "Right" then res << ">"
  when "AtCoder" then res << "A"
  end
end
puts res.join(" ")
