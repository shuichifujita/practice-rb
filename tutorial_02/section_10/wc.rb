# coding: utf-8

# ******** ******** 10.1 ******** ******** #
puts " **** wc (like unix command) **** "

ltotal = 0
wtotal = 0
ctotal = 0

ARGV.each do | file |
  begin
    input = File.open(file)
    l = 0
    w = 0
    c = 0
    input.each_line do | line |
      l += 1
      c += line.size
      line.sub(/^\s+/, "")
      ary = line.split(/\s+/)
      w += ary.size
    end
    input.close
    printf("%8d %8d %8d %s\n", l, w, c, file)
    ltotal += l
    wtotal += w
    ctotal += c
    raise NameError, "エラーだよ\n"
  rescue => ex
    printf ex.message, "\n"
  end
end

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "
