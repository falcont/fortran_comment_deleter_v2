PATTERN = /^[!|c].*[\r\n]/i

Dir.glob("#{Dir.pwd}/**/*.*") do |file|
  read_file = File.new(file, "r").read
  write_file = File.new(file, "w")

  read_file.each_line do |line|
	write_file.write(line) if line !~ PATTERN
  end
  
  puts "#{file} comments deleted!"
end
