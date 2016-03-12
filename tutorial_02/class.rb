# coding: utf-8

# ******** ******** ******** ******** #
puts " **** クラス **** "
class Human

  attr_accessor :name

  # def name=(val)
  #   @name = val
  # end

  def initialize(myname= "No name")
    @name = myname
  end

  def put_human
    puts "Hello, I am #{@name}."
  end
end

john = Human.new("john")
john.put_human

# ******** ******** ******** ******** #
puts " **** クラス変数 **** "

class HelloCount
  @@count = 0 #こいつは全てのインスタンスで共有できるで
  def HelloCount.count
    @@count
  end

  def initialize(myname= "Ruby")
    @name = myname
  end

  def hello
    @@count += 1
    puts "Hello, I am #{@name}."
  end
end

siri = HelloCount.new("Siri")
eliza = HelloCount.new("Eliza")
alice = HelloCount.new("Alice")

siri.hello
eliza.hello
alice.hello

puts HelloCount.count