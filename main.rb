require 'webrick'

server = WEBrick::HTTPSever.new(
  DocumentRoot: './',
  BindAddres: '0.0.0.0',
  Port: 8000
)

server.mount_proc('/') do |req, res|
  res.body = 'hello'
end

server.start