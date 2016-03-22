require "opal"
require "cuba_react/cli"
require "cuba_react/file_operations"
require "cuba_react/version"

module CubaReact
  def loader
    opal = Opal::Server.new {|s|
      s.append_path 'js'
      s.main = 'react'
    }
    Opal::Processor.load_asset_code(opal.sprockets, 'react')
  end
end
