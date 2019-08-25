stop = false

trap :TERM do
  puts 'Received SIGTERM'
  stop = true
end

trap :INT do
  puts 'Received SIGINT'
  stop = true
end

$stdout.sync = true

puts 'Start sleeping...'

until stop
  sleep 1
end

puts 'done'
