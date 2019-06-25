# Contest ID: arc025
# Problem ID: arc025_2 ( https://atcoder.jp/contests/arc025/tasks/arc025_2 )
# Title: B. チョコレート
# Language: Ruby (1.9.3)
# Submitted: 2017-02-12 12:56:40 +0000 UTC ( https://atcoder.jp/contests/arc025/submissions/1108246 ) 

h, w = gets.chomp.split(" ").map(&:to_i)
t1 = [Array.new(w+1, 0)]

h.times do |i|
  cc = gets.chomp.split(" ").map(&:to_i)
  w.times do |j|
    if (i + j).odd?
      cc[j] *= (-1)
    end
  end
  (1...w).each do |j|
    cc[j] = cc[j-1] + cc[j]
  end
  t1 << ([0] + cc)
end
# p t1
(0..w).each do |i|
  (1..h).each do |j|
    t1[j][i] += t1[j-1][i]
  end
end

ret = 0
h.downto(1) do |hh|
  w.downto(1) do |ww|
    break if ret >= hh * ww
    # p [hh, ww]
    (1..(h-hh+1)).each do |i|
      (1..(w-ww+1)).each do |j|
        sq1 = t1[i+hh-1][j+ww-1]
        sq2 = t1[i-1][j-1]
        sq3 = t1[i+hh-1][j-1]
        sq4 = t1[i-1][j+ww-1]
        # p [sq1, sq2, sq3, sq4]
        if sq1 + sq2 - sq3 - sq4 == 0 then
          ret = hh * ww
        end
      end
    end
  end
end

puts ret

