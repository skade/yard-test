module RemoteCall

  ##
  # Test.
  #
  # Generates a remote function call 
  # that magically works.
  #
  # @param name [Symbol, #to_sym] 
  #     The name of the remote call
  # @return [Foo]
  def remote(name)
    
    define_method name do |params = {}|
      # do remote function call
    end
    
    define_method "#{name}_cached" do |params = {}|
      # cache lookup
      # rfc
    end
    
  end
  
end