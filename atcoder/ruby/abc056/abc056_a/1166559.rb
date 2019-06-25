# Contest ID: abc056
# Problem ID: abc056_a ( https://atcoder.jp/contests/abc056/tasks/abc056_a )
# Title: A. HonestOrDishonest
# Language: Ruby (2.3.3)
# Submitted: 2017-03-18 12:03:00 +0000 UTC ( https://atcoder.jp/contests/abc056/submissions/1166559 ) 

a, b = gets.chomp.split(" ")
if a == "H" then
  if b == "H" then
    ret = "H"
  else
    ret = "D"
  end
else
  if b == "H" then
    ret = "D"
  else
    ret = "H"
  end
end
puts ret