require 'fileutils'

lines = ["line 1", "line 2", "line 3", "line 4"]

Dir.mkdir('csv')


f = File.new("./csv/my_file.txt", "w")
lines.each { |line| f.puts(line) }
f.close