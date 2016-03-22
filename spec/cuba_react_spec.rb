# require 'spec_helper'
require 'cuba_react'

describe CubaReact do
  let(:cuba_react_wrapper) { Class.new { include CubaReact } }
  #
  # before :all do
  #   Creact::FileOperations.run_generator
  # end
  #
  # after :all do
  #   Creact::FileOperations.delete_dirs
  # end

  it 'returns non-empty string when loader is called' do
    expect(cuba_react_wrapper.new.loader).not_to eq ''
  end

  it 'has a version number' do
    expect(CubaReact::VERSION).not_to be nil
  end

  it 'loader marks opal loaded' do
    expect(cuba_react_wrapper.new.loader).to include 'mark_as_loaded("opal");'
  end

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
