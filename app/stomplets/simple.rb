require 'torquebox-stomp'
class Simple < TorqueBox::Stomp::JmsStomplet

  def initialize()
  	Rails.logger.info "simple class called"
    super
  end


  def configure(stomplet_config)
    super
    #@queue = TorqueBox::Messaging::Queue.new(stomplet_config['/queue/test_queue'] )
    # @destination_type = stomplet_config['type']
    # @destination_name = stomplet_config['destination']
    # Rails.logger.info @destination_name
    # Rails.logger.info @destination_type
    @my_jms_queue = TorqueBox::Messaging::Queue.new('/queues/test_queue') 
    Rails.logger.info @my_jms_queue
  end

  def on_message(stomp_message,session)
    puts "client sent message"
  	#called when a client sends a message to a destination this stomplet handles
  	Rails.logger.info stomp_message
    Rails.logger.info @session
   # send_to(destination_for(@destination_name,@destination_type),stomp_message)

  end

  def on_subscribe(subscriber)
    subscribe_to(subscriber,@my_jms_queue)
    Rails.logger.info subscriber
    subscriber.send(message)
    Rails.logger.info message
    # subscribe_to(subscriber,destination_for(@destination_name,@destination_type))
    
    # Rails.logger.info @subscriber
  end

end

  