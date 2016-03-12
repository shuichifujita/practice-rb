# coding: utf-8

require 'fileutils'

# pathes
src_path = "./org/"
dest_path = "./dest/"
# rule of file name
strings_filename = "*" + "_2" + "*.png"

# copy method
def files(path, str_name)
  Dir::glob(path + str_name).each do | filename |
    if FileTest.directory?(filename)
      files(filename)
    else
      puts filename
    end
  end
end

# put file size
def put_filesize(file)
  filesize = FileTest.size(file)
  puts "File size: " + filesize + "byte"
end

# run
puts "****> Original files"
FileUtils.cp(files(src_path, strings_filename), dest_path)
puts "****> Copied files"
files(dest_path, strings_filename)
puts "****> End"