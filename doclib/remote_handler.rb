class YARD::Handlers::RemoteHandler < YARD::Handlers::Base
  handles /\Aremote/
  
  def process
    name_token = statement.tokens[2]
    name = name_token.text.sub(/:/, '')
    
    comments = statement.comments
    comments << "@see RemoteCall#remote"
    comments << "@return [String] Response"
    
    register MethodObject.new(namespace, name, :instance) do |o|
      o.visibiliy = :public
      o.parameters = [["params", "{}"]]
    end
    
    register MethodObject.new(namespace,
                "#{name}_cached", :instance) do |o|
      o.visibility = :public
      o.parameters = [["params", "{}"]]
      o.docstring = ["Cached version of #{name}", 
                     "@see #{namespace}##{name}",
                     "@param params as in Alien#response",
                     "@return [String] response"]
      o.docstring.finalize!
    end
    
  end
end