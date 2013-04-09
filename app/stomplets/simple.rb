require 'torquebox-stomp'

class Simple

def on_message(message,session)
subscriber.send(message)
end

	end
