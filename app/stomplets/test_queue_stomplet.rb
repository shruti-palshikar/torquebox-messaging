require 'torquebox-stomp'

class TestQueueStomplet < TorqueBox::Stomp::JmsStomplet

  include TorqueBox::Injectors

  def initialize()
    super
    @destination = inject( '/queues/test_queue' )
  end

  def on_message(stomp_message, session)
    username = session[:username]
    stomp_message.headers['sender'] = username
    stomp_message.headers['recipient'] = 'test'
    send_to( @destination, stomp_message )
  end

  def on_subscribe(subscriber)
    username = subscriber.session[:username]
    subscribe_to( subscriber,  
                  @destination,  
                  "recipient='test_queue'" )
    update_roster :join, username
  end

  def on_unsubscribe(subscriber)
    username = subscriber.session[:username]
    update_roster :part, username
    super
  end
