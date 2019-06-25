# Contest ID: abc109
# Problem ID: abc109_d ( https://atcoder.jp/contests/abc109/tasks/abc109_d )
# Title: D. Make Them Even
# Language: Ruby (2.3.3)
# Submitted: 2018-09-09 05:54:46 +0000 UTC ( https://atcoder.jp/contests/abc109/submissions/3167552 ) 

h, w = gets.chomp.split(" ").map(&:to_i)
a = []
h.times do
  a << gets.chomp.split(" ").map(&:to_i)
end

ans = []
h.times do |i|
  w.times do |j|
    if (a[i][j]).odd?
      if j < w - 1
        a[i][j] -= 1
        a[i][j+1] += 1
        ans << [i+1, j+1, i+1, j+2]
      else
        if i < h - 1
          a[i][j] -= 1
          a[i+1][j] += 1
          ans << [i+1, j+1, i+2, j+1]
        end
      end
    end
  end
end

puts ans.length
ans.each{|line| puts line.join(" ")}