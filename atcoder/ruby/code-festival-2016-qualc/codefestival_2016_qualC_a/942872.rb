# Contest ID: code-festival-2016-qualc
# Problem ID: codefestival_2016_qualC_a ( https://atcoder.jp/contests/code-festival-2016-qualc/tasks/codefestival_2016_qualC_a )
# Title: A. CF
# Language: Ruby (2.3.3)
# Submitted: 2016-10-23 12:08:03 +0000 UTC ( https://atcoder.jp/contests/code-festival-2016-qualc/submissions/942872 ) 

s = gets.chomp
c = s.index("C")
ret = false
if !c.nil? then
  f = s[c..(s.length-1)].index("F")
  if !f.nil?
    ret = true
  end
end
if ret then
  puts "Yes"
else
  puts "No"
end
