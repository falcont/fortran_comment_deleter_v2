# encoding: Windows-1251 
PATTERN1 = /^[!|c].*[\r\n]/i
PATTERN2 = /^\s*[!]|^[c].*[\r\n]/i #для пробелов перед !
PATTERN3 = /^\s*[!]|^[c]|^\s*$.*[\r\n]/i #пустые строки
#
Dir.glob("#{Dir.pwd}/**/*.*") do |file|
  read_file = File.new(file, "r").read
  write_file = File.new(file, "w")
  read_file.each_line do |line|
    write_file.write(line) if line !~ PATTERN3
  end
  puts "#{file} comments deleted!"
end
#
