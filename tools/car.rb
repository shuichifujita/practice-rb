# coding: utf-8

# ======== ======== ======== ========
st = Time.now
str_st = st.strftime("%H:%M:%S")
puts "******** ******** START[#{str_st}] ******** ********\n\n"

# 車が走ったり給油したりするコード
# ======== ======== ======== ========

# Create class
class Car
  def initialize(name, color)
    @name = name
    @color = color
    @distance = 0
    @fuel = 20
    @FUEL_MAX = 40
    @FUEL_CONS = 16

    # ただのセパレーター
    @head_line = "******** *** Car State *** ********"
    @foot_line = "******** ******** ******** ********"
    @command = "What do you do next?\nrun: running\nrefuel: refueling\nend: going garage"

    puts @head_line, "Name: #{@name}", "Color: #{@color}", "Dist: #{@distance}", "Fuel: #{@fuel}", @foot_line
  end

  # 現状
  def status
    puts @head_line, "Name: #{@name}", "Color: #{@color}", "Dist: #{@distance}", "Fuel: #{@fuel}", @foot_line, @command
  end

  # 走る
  def run
    puts "How long run?"
    mileage = gets.to_i
    reduce = mileage / @FUEL_CONS

    if (@fuel - reduce) < 0
      puts "そんなに走れません"
    else
      @distance += mileage
      @fuel -= reduce
    end

    puts @head_line, "Ran #{@distance} distance.", "Distance: #{@distance}", "Fuel: #{@fuel}", @foot_line, @command
  end

  # 給油する
  def refuel
    puts "How much to refuel?"
    refuel = gets.to_i
    fuel_diff = @FUEL_MAX - @fuel

    if (@fuel + refuel) > @FUEL_MAX
      @fuel = @FUEL_MAX
    else
      @fuel += refuel
    end

    puts @head_line, "Refueling #{fuel_diff}.", "Fuel: #{@fuel}", @foot_line, @command
  end
end

# Object new
car1 = Car.new("Revogue", "red")

# Commund input and do method
puts "What are you doing?\nstatus: output car status\nrun: running\nrefuel: refueling\nend: going garage"

until (command = gets.chomp) == "end" do
  case command
  when "status"
    car1.status
  when "run"
    car1.run
  when "refuel"
    car1.refuel
  else
    puts "Command not found, type again."
  end
end

puts "Cheers for good work!"

# ======== ======== ======== ========
et = Time.now
str_et = et.strftime("%H:%M:%S")
puts "\n******** ******** END[#{str_et}] ******** ********"

# ======== ======== ======== ========
