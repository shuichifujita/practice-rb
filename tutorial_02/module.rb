# coding: utf-8

# ******** ******** ******** ******** #
puts " **** Modules **** "

include Math
puts "円周率: #{PI}"

module HelloModule
  Version = "1.0"

  def hello(name)
    puts "Hello, I am #{name}."
  end

  module_function :hello
end

puts HelloModule::Version
HelloModule.hello('Siri')

# include HelloModule
# puts Version
# hello('Eliza')

# ******** ******** ******** ******** #
puts " **** Mix-in **** "

# クラスにモジュールを取り込むよ
module M
  def meth
    "Method of Module"
  end
end

class C
  include M
end

# c = C.new
# puts c.meth

# extendつまり特異メソッド
module Edition
  def edition(n)
    # selfはEditionのレシーバを返す
    "#{self} 第#{n}版"
  end
end

# str = "たのしいRuby"
# str.extend(Edition)
# puts str.edition(4)

# extendとincludeは言い方が違うけどやってることは同じってこと？
class MyClass
  extend(M) # クラスメソッドとして追加
  include Edition # インスタンスメソッドとして追加
end

puts MyClass.meth
puts MyClass.new.edition(4)

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "