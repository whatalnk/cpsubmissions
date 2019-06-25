# Contest ID: abc049
# Problem ID: abc049_a ( https://atcoder.jp/contests/abc049/tasks/abc049_a )
# Title: A. 居合を終え、青い絵を覆う / UOIAUAI
# Language: Ruby (2.3.3)
# Submitted: 2016-12-10 12:03:47 +0000 UTC ( https://atcoder.jp/contests/abc049/submissions/1017695 ) 

s = gets.chomp
if ["a", "i", "u", "e", "o"].include?(s) then
  puts "vowel"
else
  puts "consonant"
end
