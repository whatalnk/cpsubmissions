# Contest ID: abc062
# Problem ID: arc074_a ( https://atcoder.jp/contests/abc062/tasks/arc074_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-05-20 14:52:26 +0000 UTC ( https://atcoder.jp/contests/abc062/submissions/1300324 ) 

H, W = gets.chomp.split(" ").map(&:to_i)
if H % 3 == 0 || W % 3 == 0 then
  puts 0
  exit
end

ret = H * W
short, long = [H, W].minmax

long.times do |i|
  a = (i + 1) * short
  
  b = (short / 2) * (long - (i + 1))
  c = (short - short / 2) * (long - (i + 1))
  if a > 0 && b > 0 && c > 0 then
    ret = [([a, b, c].max - [a, b, c].min), ret].min 
  end

  b = ((long - i) / 2) * short
  c = (long - (i + 1) - ((long - i) / 2)) * short
  if b > 0 && c > 0 then
    ret = [([a, b, c].max - [a, b, c].min), ret].min 
  end

end

short, long = long, short
long.times do |i|
  a = (i + 1) * short

  b = (short / 2) * (long - (i + 1))
  c = (short - short / 2) * (long - (i + 1))
  if b > 0 && c > 0 then
    ret = [([a, b, c].max - [a, b, c].min), ret].min 
  end

  b = ((long - i) / 2) * short
  c = (long - (i + 1) - ((long - i) / 2)) * short
  if a > 0 && b > 0 && c > 0 then
    ret = [([a, b, c].max - [a, b, c].min), ret].min 
  end

end
puts ret