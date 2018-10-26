Config
`cp config.yml.example config.yml`

Listen
```ruby
ruby listener.rb <SUBSCRIPTION>
```

Publish
```ruby
ruby publisher.rb
```

Multi config
```ruby
GROUP=another ruby listener.rb <SUBSCRIPTION>
GROUP=another ruby publisher.rb
```
