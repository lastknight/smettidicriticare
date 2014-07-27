use Rack::Static,
  :urls => ["/img", "/js", "/css", "/fonts", "/font-awesome-4.1.0", "/content", "js", "less"],
  :root => "public"

map 'http://smettidicriticare.com/' do 
  run Rack::File.open('public/italian.html', File::RDONLY)
end

map 'http://www.smettidicriticare.com/' do 
  run Rack::File.open('public/italian.html', File::RDONLY)
end