use Rack::Static,
	:urls => ["/img", "/js", "/css", "/fonts", "/font-awesome-4.1.0", "/content", "js", "less"],
	:root => "public"

map 'http://smettidicriticare.com/' do 
  run Rack::File.new("public/italian.html")
end

map 'http://www.smettidicriticare.com/' do 
  run Rack::File.new('public/italian.html')
end

map 'http://www.juststopcomplaining.com/' do 
  run Rack::File.new('public/english.html')
end

map 'http://juststopcomplaining.com/' do 
  run Rack::File.new('public/english.html')
end

