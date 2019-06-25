# Contest ID: tenka1-2017-beginner
# Problem ID: tenka1_2017_c ( https://atcoder.jp/contests/tenka1-2017-beginner/tasks/tenka1_2017_c )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-09-30 12:58:32 +0000 UTC ( https://atcoder.jp/contests/tenka1-2017-beginner/submissions/1639533 ) 

N = gets.chomp.to_i

if N.even?
  # p [N / 4, N * N * (N / 2) / (N * N + N * N / 2 + N * N / 2)]
  puts "#{N} #{N} #{N / 2}"
else
  (1..3500).each do |h|
    (1..3500).each do |n|
      if h.even? || n.even? then
        x = N * h * n
        y = (4 * h * n - N * n - N * h)
        if y > 0 && x % y == 0
          # p [N / 4, h * n * (x / y) / (h * n + n * x / y + h * x / y)]
          puts "#{h} #{n} #{x / y}"
          exit
        end
      end
    end
  end    
end

