require 'thor'

module CubaReact
  class Generate < Thor
    desc "generate", "This will generate mote and js files."
    long_desc <<-GENERATE

    `generate` will generate the following tree in your project:

      ├── js\n
      │   ├── jquery.js\n
      │   └── react.rb\n
      ├── views\n
      │   ├── home.mote\n
      │   └── layout.mote\n

      This will integrate React into your project.\n

    GENERATE
    # option :upcase
    def generate( template=nil )
      # greeting = "Hello, #{template}"
      # greeting.upcase! if options[:upcase]
      # puts greeting
      CubaReact::FileOperations.run_generator
    end
  end
end
