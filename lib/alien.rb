require 'lib/remote'

class Alien
  extend RemoteCall
  
  ##
  # Lets aliens fulfill their greatest wish.
  #
  # Calling home is implemented using the 
  # magic remote call.
  #
  # @option params :planet [String, #to_s] (Brodo Asogi) 
  #    (required) the planet we want to call
  #
  # @option params :message [String, #read] (N/A)
  #    (required) the message we want to send
  remote :call_home
end