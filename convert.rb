require 'redcloth'

path = ARGV[0]
content = ''

File.open(path, 'r') do |file|
	content = file.read
end

html = RedCloth.new(content).to_html

File.open(path + ".html", 'w') do |file|
	file.puts html
end
