# Contest ID: agc016
# Problem ID: agc016_a ( https://atcoder.jp/contests/agc016/tasks/agc016_a )
# Title: A. Shrinking
# Language: Ruby (2.3.3)
# Submitted: 2017-06-18 12:37:12 +0000 UTC ( https://atcoder.jp/contests/agc016/submissions/1360637 ) 

s = gets.chomp.split("")

n = s.length

if s.uniq.length == 1 then
  puts 0
elsif s.uniq.length == n then
  puts n / 2
else
  h = Hash.new(0)
  s.each do |c|
    h[c] += 1
  end
  ret = n
  h.each do |k, v|
    if v > 1 then
      ind = [0]
      cand = []
      s.each_with_index do |c, i|
        if c == k
          ind << i 
          cand << i - ind[-2] - 1
        end
      end
      cand[0] += 1
      cand << n-1 - ind[-1]
      ret = [ret, cand.max].min
    end
  end
  puts ret
end
