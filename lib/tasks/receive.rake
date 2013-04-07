

task :receive do
#! /usr/bin/env jruby	
require 'rubygems'
require 'torquebox-messaging'
require 'torquebox-naming'
#TorqueBox::Messaging::Queue.list.each do |queue|
	#puts "#{queue}"
#QueueList = TorqueBox::Messaging::Queue.lookup('/queue/MyAppQueue')
#puts "#{QueueList}"
#queue = TorqueBox::Messaging::Queue.new('/queues/MyAppQueue' , :host => '192.168.0.102')
#queueRecv = TorqueBox::Messaging::Queue.new('/queues/torquebox-queues')
#queueRecv = TorqueBox::Messaging::Queue.new('/queues/TBQueueRuby', :host => '192.168.112.115', :port => 5445)
queueRecv = TorqueBox::Messaging::Topic.new('/topics/TBtopic', :host => '10.0.0.1', :port => 5445)
puts "connected to queue"
message = queueRecv.receive
puts message

puts "Message received from queue 1!"
#logger.info "received message"
#queueRecv2 = TorqueBox::Messaging::Queue.new('/queues/TBQueueRuby2', :host => '192.168.2.130', :port => 5445)
#message2 = queueRecv2.receive
#puts message2

#puts "Message received from queue 2!"
end
