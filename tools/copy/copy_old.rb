require 'fileutils'

src_path = "./"

src = [
  src_path + '984582.png',
  src_path + '969257.png',
  src_path + '915010.png',
  src_path + '992810.png',
  src_path + '913899.png',
  src_path + '904556.png',
  src_path + '915311.png',
  src_path + '914592.png',
  src_path + '914730.png'
]

dest = "/Path/"

FileUtils.cp(src, dest)