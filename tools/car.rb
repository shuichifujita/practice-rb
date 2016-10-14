# coding: utf-8

# ======== ======== ======== ========
st = Time.now
str_st = st.strftime("%H:%M:%S")
puts "******** ******** START[#{str_st}] ******** ********\n\n"

# 車が走ったり給油したりするコード
# ======== ======== ======== ========

class Car
  def initialize(name, color)
    @name = name
    @color = color
    @distance = 0
    @fuel = 0

    # ただのセパレーター
    @line = "******** ******** ******** ********"

    puts @line, "Name: #{@name}", "Color: #{@color}", "Dist: #{@distance}", "Fuel: #{@fuel}", @line
  end

  def run
    mileage = 60
    reduce = 4

    @distance += mileage
    @fuel -= reduce

    puts "Ran #{@distance} distance.", "Distance: #{@distance}", "Fuel: #{@fuel}", @line
  end

  def refuel
    max = 40
    refuel = 10

    if @fuel > max
      @fuel = max
    else
      @fuel += refuel
    end

    puts "Refueling #{refuel}.", "Fuel: #{@fuel}", @line
  end
end

car1 = Car.new("Revogue", "red")
car1.refuel
car1.refuel
car1.run

# ======== ======== ======== ========
et = Time.now
str_et = et.strftime("%H:%M:%S")
puts "\n******** ******** END[#{str_et}] ******** ********"

# ======== ======== ======== ========
