use Rack::Static,
  :urls => ["/img", "/js", "/css", "/fonts", "/font-awesome-4.1.0", "/content", "js", "less"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
