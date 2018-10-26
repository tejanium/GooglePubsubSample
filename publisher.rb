load 'boot.rb'

topic = PUBSUB.topic TOPIC

puts "Publishing to #{ topic.name }\n\n"

loop do
  print 'Enter your message: '
  message = gets

  topic.publish message
end
