require 'webrick'

class Server < WEBrick::HTTPServlet::AbstractServlet
  def do_GET (request, response)
    message = request.query['message']

    puts
    puts '=' * 50
    puts message
    puts '=' * 50

    pass_message(ARGV[1], message) if ARGV[1]
  end

  def pass_message(port, message)
    `curl "localhost:#{ port }/?message=#{ URI.escape(message) }"`
  end
end

server = WEBrick::HTTPServer.new(:Port => ARGV[0].to_i, AccessLog: [])

server.mount '/', Server

trap 'INT' do
  server.shutdown
end

server.start
