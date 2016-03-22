require 'opal'
require 'jquery'
require 'opal-jquery'
require 'reactive-ruby'

class HelloWorld
	include React::Component
	def render
		h1 {"Hello, World!"}
	end
end

Document.ready? do
	React.render(React.create_element(HelloWorld), Element["#content"])
end
