require 'rubygems'
require 'torquebox-messaging'
require 'torquebox-naming'
class TestConsumer < TorqueBox::Messaging::MessageProcessor
def on_message(body)
		queue = TorqueBox::Messaging::Queue.new('/queues/test_queue', :host=>'192.168.0.101', :port => 5445,:user => 'webapp', :password => 'disrupt2013')

		body = queue.receive
		puts body
	end
	

		def process(msg)
			super
		end


	end