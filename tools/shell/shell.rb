# config: utf-8

# rubyの中でshコマンドが少し使えるよ

while true
  print '-> '
  line = gets or break
  line.chomp!
  cmd, *args = line.split(/\s+/) # 空白でパースできる
  pid = Process.fork do
    Process.exec [cmd, cmd], *args
  end
  Process.waitall
end