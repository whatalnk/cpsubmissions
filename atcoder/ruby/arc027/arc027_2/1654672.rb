# Contest ID: arc027
# Problem ID: arc027_2 ( https://atcoder.jp/contests/arc027/tasks/arc027_2 )
# Title: B. 大事な数なのでZ回書きまLた。
# Language: Ruby (2.3.3)
# Submitted: 2017-10-06 12:51:07 +0000 UTC ( https://atcoder.jp/contests/arc027/submissions/1654672 ) 

require 'set'

n = gets.chomp.to_i
s1 = gets.chomp
s2 = gets.chomp
letters = ("A".."Z").to_a
atoi = [letters, (0...26).to_a].transpose.to_h

code = Struct.new("Code", :letter, :index, :number)
@a = Array.new(26)
b = Array.new(26, false)

# Union Find
@par = (0...26).to_a
@rank = Array.new(26, 0)
def find(x)
  if @par[x] == x
    return x
  else
    @par[x] = find(@par[x])
    return @par[x]
  end
end

def unite(x, y)
  xx = x
  yy = y
  x = find(x)
  y = find(y)
  if x == y
    return
  end
  if @rank[x] < @rank[y]
    @par[x] = y
  else
    @par[y] = x
    if @rank[x] == @rank[y]
      @rank[x] += 1
    end
  end
  @a[xx].number = @a[yy].number = [@a[xx].number, @a[yy].number].max
  @a[xx].index = @a[yy].index = (@a[xx].index + @a[yy].index)
end

def same(x, y)
  return find(x) == find(y)
end

n.times do |i|
  c1 = s1[i]
  c2 = s2[i]
  if letters.include?(c1) && letters.include?(c2)
    b[atoi[c1]] = true
    b[atoi[c2]] = true
    if @a[atoi[c1]].nil?
      @a[atoi[c1]] = code.new(c1, Set[i], -1)
    else
      @a[atoi[c1]].index += Set[i]
    end
    if @a[atoi[c2]].nil?
      @a[atoi[c2]] = code.new(c2, Set[i], -1)
    else
      @a[atoi[c2]].index += Set[i]
    end
  elsif letters.include?(c1)
    b[atoi[c1]] = true
    if @a[atoi[c1]].nil?
      @a[atoi[c1]] = code.new(c1, Set[i], c2.to_i)
    else
      @a[atoi[c1]].index += Set[i]
      @a[atoi[c1]].number = c2.to_i
    end
  elsif letters.include?(c2)
    b[atoi[c2]] = true
    if @a[atoi[c2]].nil?
      @a[atoi[c2]] = code.new(c2, Set[i], c1.to_i)
    else
      @a[atoi[c2]].index += Set[i]
      @a[atoi[c2]].number = c1.to_i
    end
  end
end

b = (0...26).select{|i| b[i]}

b.combination(2) do |i, j|
  c1 = @a[i]
  c2 = @a[j]
  if c1.index.intersect?(c2.index)
    unite(i, j)
  end
end

roots = b.map{|i| @par[i]}.uniq

ans = 1
roots.uniq.each do |i|
  if @a[i].number == -1
    if @a[i].index.min == 0
      ans *= 9
    else
      ans *= 10
    end
  end
end

puts ans