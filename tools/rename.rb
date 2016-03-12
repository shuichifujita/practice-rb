# Re-Name

require 'fileutils'

Dir::glob("*.png") do |filename|
  newname = filename.gsub(/^(\d+)/) { sprintf("%3d", $1.to_i) }
  FileUtils.mv(filename, newname)
end