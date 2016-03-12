# coding: utf-8

require 'fileutils'

# pathes
src_path = "./org/"
dest_path = "./dest/"

# copy logic
def files(path)
  Dir::glob(path + "*" + "_2" + "*.png").each do | filename |
    if FileTest.directory?(filename)
      files(filename)
    else
      puts filename
    end
  end
end

# run
puts "****> Original files"
FileUtils.cp(files(src_path), dest_path)
puts "****> Copied files"
files(dest_path)
puts "****> End"