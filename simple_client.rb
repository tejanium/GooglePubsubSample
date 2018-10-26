loop do
  print 'Enter your message: '
  message = gets

  `curl "localhost:3000/?message=#{ URI.escape(message) }"`
end

