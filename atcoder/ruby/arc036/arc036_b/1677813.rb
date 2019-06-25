# Contest ID: arc036
# Problem ID: arc036_b ( https://atcoder.jp/contests/arc036/tasks/arc036_b )
# Title: B. 山のデータ
# Language: Ruby (2.3.3)
# Submitted: 2017-10-12 07:19:50 +0000 UTC ( https://atcoder.jp/contests/arc036/submissions/1677813 ) 

n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.to_i
end
peaks = [0]
(1...(n-1)).each do |i|
  if arr[i] > arr[i - 1] && arr[i] > arr[i + 1]
    peaks << i 
  end
end
peaks << n - 1

ans = 0
peaks.each do |i|
  # left
  left = 0
  if i != 0
    i.downto(1) do |di|
      if arr[di] > arr[di-1]
        left += 1
      else
        break
      end
    end
  end
  # right
  right = 0
  if i != n - 1
    i.upto(n-2) do |di|
      if arr[di] > arr[di+1]
        right += 1
      else
        break
      end
    end
  end
  ans = [ans, left + right + 1].max
end

puts ans