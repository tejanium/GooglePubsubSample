load 'boot.rb'

topic     = PUBSUB.topic TOPIC
subscribe = topic.subscription(ARGV[0]) || topic.subscribe(ARGV[0])

subscriber = subscribe.listen do |received_message|
  data        = received_message.message.data
  parsed_data = JSON.parse(data) rescue data

  puts '=' * 50
  puts parsed_data
  puts '=' * 50
  puts

  received_message.acknowledge!
end

puts "Listening to #{ topic.name }\n\n"

subscriber.start

loop {}
