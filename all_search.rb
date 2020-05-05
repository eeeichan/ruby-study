## 問題
# 長さnの数列Aと整数mに対して、Aの要素の中のいくつかの要素を足し合わせて
# mが作れるかどうかを判定するプログラムを作成してください。
# Aの各要素は1度だけ使うことができます。
#
# 数列Aが与えられたうえで、質問としてq個のm iが与えられるので、
# それぞれについて"yes"または"no"と出力してください。
#
# 入力
# 1行目にn、2行目にAを表すn個の整数、3行目にq、4行目にq個の整数m iが与えられます。
#
# 出力
# 各質問についてAの要素を足しあわせてm iを作ることができればyesと、できなければnoと出力してください。
#
# 入力例
# 5
# 1 5 7 10 21
# 4
# 2 4 17 8
#
# 出力例
# no
# no
# yes
# yes


def search(ary, len)
  cnt = 0
  result = []
  while cnt < (1 << len)
    bit = cnt.to_s(2).rjust(len,'0').split("").map(&:to_i)
  
    items = []
    ary.zip(bit).each do |k|
      item, b = k.first, k.last
      items << item if b == 1
    end
  
    result << items.inject(:+)
    cnt+=1
  end
  result
end


n = gets.chomp.to_i
# a = A
a = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i
m = gets.chomp.split.map(&:to_i)

i = 0
q.times{
  result = search(a, n).select{|x| x == m[i]}
  puts result.count > 0 ? "yes" : "no"
  i += 1
}

# 1 5 7の組み合わせで総和が8になるテスト
#ary = gets.chomp.split.map(&:to_i)
#res = gets.chomp.to_i
#puts "総和#{res}が成立するのは#{search(ary, 3).count{|x| x == res}}通り"
#
# MEMO
# bit全探索参照
# https://qiita.com/hiroyuki-nagata/items/5b0ff1a6776e0ee36f61
#
#
