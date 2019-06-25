# Contest ID: agc022
# Problem ID: agc022_a ( https://atcoder.jp/contests/agc022/tasks/agc022_a )
# Title: A. Diverse Word
# Language: Ruby (2.3.3)
# Submitted: 2018-09-05 13:48:06 +0000 UTC ( https://atcoder.jp/contests/agc022/submissions/3140391 ) 

h = {}
('a'..'z').zip(1..26) do |k, v|
  h[k] = v
end

s = gets.chomp.split("")

if s.length < 26
  cand = ('a'..'z').select{|x| !s.include?(x)}
  puts s.join("") + cand[0]
else
  left = 0
  25.downto(1) do |i|
    if h[s[i]] > h[s[i - 1]]
      left = i
      break
    end
  end
  if left == 0
    puts -1
  else
    cand = s[left..25].select{|x| h[x] > h[s[left - 1]]}.sort
    if left == 1
      puts cand[0]
    else
      puts s[0..(left - 2)].join("") + cand[0]
    end
  end
end