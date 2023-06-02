dir_path = File.join("basic", "experiment")
puts dir_path

file_path = File.join(dir_path, "test.txt")
puts file_path


IO.foreach(file_path) do |line|
  puts line
end

require 'tmpdir'
  tempfilename = File.join(Dir.tmpdir, "tingtong")
  tempfile = File.new(tempfilename, "w")
  tempfile.puts "This is a temporary file"
  tempfile.close
  File.delete(tempfilename)
