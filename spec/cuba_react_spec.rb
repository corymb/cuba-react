require 'spec_helper'

describe CubaReact do
  # let(:creact_wrapper) { Class.new { include Creact } }
  #
  # before :all do
  #   Creact::FileOperations.run_generator
  # end
  #
  # after :all do
  #   Creact::FileOperations.delete_dirs
  # end
  #
  it 'has a version number' do
    expect(CubaReact::VERSION).not_to be nil
  end
  #
  # it 'loader marks opal loaded' do
  #   expect(creact_wrapper.new.loader).to include 'mark_as_loaded("opal");'
  # end
  #
  # it 'loader marks runtime loaded' do
  #   expect(creact_wrapper.new.loader).to include 'mark_as_loaded("corelib/runtime.self");'
  # end
  #
  # it 'loader marks jquery loaded' do
  #   expect(creact_wrapper.new.loader).to include 'mark_as_loaded("jquery.self");'
  # end
  #
  # it 'loader marks react loaded' do
  #   expect(creact_wrapper.new.loader).to include 'mark_as_loaded("sources/react.self");'
  # end
  #
  # it 'loader marks entry point loaded' do
  #   expect(creact_wrapper.new.loader).to include 'Opal.load("react");'
  # end
end
