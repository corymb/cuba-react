require 'spec_helper'

describe CubaReact::FileOperations do

  after :each do
    CubaReact::FileOperations.delete_dirs
  end

  it 'creates js directory' do
    expect(Dir.exists? 'js').to be false
    CubaReact::FileOperations.create_dirs
    expect(Dir.exists? 'js').to be true
  end

  it 'creates views directory' do
    expect(Dir.exists? 'views').to be false
    CubaReact::FileOperations.create_dirs
    expect(Dir.exists? 'views').to be true
  end

#   it 'handles a pre-existing js directory' do
#     expect(Dir.exists? 'js').to be false
#     Dir.mkdir 'js'
#     expect(Dir.exists? 'js').to be true
#     CubaReact::FileOperations.create_dirs
#     expect(Dir.exists? 'js').to be true
#   end
#
#   it 'handles a pre-existing views directory' do
#     expect(Dir.exists? 'views').to be false
#     Dir.mkdir 'views'
#     expect(Dir.exists? 'views').to be true
#     CubaReact::FileOperations.create_dirs
#     expect(Dir.exists? 'views').to be true
#   end
#
#   it 'creates home.mote' do
#     expect(File.exists? 'views/home.mote').to be false
#     CubaReact::FileOperations.create_dirs
#     CubaReact::FileOperations.create_views
#     expect(File.exists? 'views/home.mote').to be true
#   end
#
#   it 'creates home.mote in a pre-existing views directory' do
#     expect(Dir.exists? 'views').to be false
#     Dir.mkdir 'views'
#     expect(Dir.exists? 'views').to be true
#     CubaReact::FileOperations.run_generator
#     expect(File.exists? 'views/home.mote').to be true
#   end
#
#   it 'creates layout.mote' do
#     expect(File.exists? 'views/layout.mote').to be false
#     CubaReact::FileOperations.create_dirs
#     CubaReact::FileOperations.create_views
#     expect(File.exists? 'views/layout.mote').to be true
#   end
#
#   it 'creates layout.mote in a pre-existing views directory' do
#     expect(Dir.exists? 'views').to be false
#     Dir.mkdir 'views'
#     expect(Dir.exists? 'views').to be true
#     CubaReact::FileOperations.run_generator
#     expect(File.exists? 'views/layout.mote').to be true
#   end
#
#   it 'creates jquery.js' do
#     expect(File.exists? 'js/jquery.js').to be false
#     CubaReact::FileOperations.create_dirs
#     CubaReact::FileOperations.create_js
#     expect(File.exists? 'js/jquery.js').to be true
#   end
#
#   it 'creates jquery.js in a pre-existing js directory' do
#     expect(Dir.exists? 'js').to be false
#     Dir.mkdir 'js'
#     expect(Dir.exists? 'js').to be true
#     CubaReact::FileOperations.run_generator
#     expect(File.exists? 'js/jquery.js').to be true
#   end
#
#   it 'creates react.rb' do
#     expect(File.exists? 'js/react.rb').to be false
#     CubaReact::FileOperations.create_dirs
#     CubaReact::FileOperations.create_js
#     expect(File.exists? 'js/react.rb').to be true
#   end
#
#   it 'creates react.rb in a pre-existing js directory' do
#     expect(Dir.exists? 'js').to be false
#     Dir.mkdir 'js'
#     expect(Dir.exists? 'js').to be true
#     CubaReact::FileOperations.run_generator
#     expect(File.exists? 'js/react.rb').to be true
#   end
#
#   it 'raises exception if layout.mote already exists' do
#     expect(File.exists? 'views/layout.mote').to be false
#     Dir.mkdir 'views'
#     File.open('views/layout.mote', 'w') { |file| file.write("Test") }
#     expect(File.exists? 'views/layout.mote').to be true
#     expect{ CubaReact::FileOperations.run_generator }.to raise_error(IOError)
#   end
#
#   it 'raises exception if home.mote already exists' do
#     expect(File.exists? 'views/home.mote').to be false
#     Dir.mkdir 'views'
#     File.open('views/home.mote', 'w') { |file| file.write("Test") }
#     expect(File.exists? 'views/home.mote').to be true
#     expect{ CubaReact::FileOperations.run_generator }.to raise_error(IOError)
#   end
#
#   it 'raises exception if jquery.js already exists' do
#     expect(File.exists? 'views/jquery.js').to be false
#     Dir.mkdir 'js'
#     File.open('js/jquery.js', 'w') { |file| file.write("Test") }
#     expect(File.exists? 'js/jquery.js').to be true
#     expect{ CubaReact::FileOperations.run_generator }.to raise_error(IOError)
#   end
#
#   it 'raises exception if react.rb already exists' do
#     expect(File.exists? 'js/react.rb').to be false
#     Dir.mkdir 'js'
#     File.open('js/react.rb', 'w') { |file| file.write("Test") }
#     expect(File.exists? 'js/react.rb').to be true
#     expect{ CubaReact::FileOperations.run_generator }.to raise_error(IOError)
#   end
#
#   it 'does not overwrite existing layout.mote' do
#     expect(File.exists? 'views/layout.mote').to be false
#     Dir.mkdir 'views'
#     File.open('views/layout.mote', 'w') { |file| file.write("Test") }
#     expect(File.exists? 'views/layout.mote').to be true
#     expect{ CubaReact::FileOperations.run_generator }.to raise_error(IOError)
#     expect(File.exists? 'views/layout.mote').to be true
#     text = File.open("views/layout.mote", "r")  {|f| f.readline}
#     expect(text).to eq 'Test'
#   end
#
#   it 'does not overwrite existing home.mote' do
#     expect(File.exists? 'views/home.mote').to be false
#     Dir.mkdir 'views'
#     File.open('views/home.mote', 'w') { |file| file.write("Test") }
#     expect(File.exists? 'views/home.mote').to be true
#     expect{ CubaReact::FileOperations.run_generator }.to raise_error(IOError)
#     expect(File.exists? 'views/home.mote').to be true
#     text = File.open("views/home.mote", "r")  {|f| f.readline}
#     expect(text).to eq 'Test'
#   end
#
#   it 'does not overwrite existing react.rb' do
#     expect(File.exists? 'js/react.rb').to be false
#     Dir.mkdir 'js'
#     File.open('js/react.rb', 'w') { |file| file.write("Test") }
#     expect(File.exists? 'js/react.rb').to be true
#     expect{ CubaReact::FileOperations.run_generator }.to raise_error(IOError)
#     expect(File.exists? 'js/react.rb').to be true
#     text = File.open("js/react.rb", "r")  {|f| f.readline}
#     expect(text).to eq 'Test'
#   end
#
#   it 'does not overwrite existing jquery.js' do
#     expect(File.exists? 'js/jquery.js').to be false
#     Dir.mkdir 'js'
#     File.open('js/jquery.js', 'w') { |file| file.write("Test") }
#     expect(File.exists? 'js/jquery.js').to be true
#     expect{ CubaReact::FileOperations.run_generator }.to raise_error(IOError)
#     expect(File.exists? 'js/jquery.js').to be true
#     text = File.open("js/jquery.js", "r")  {|f| f.readline}
#     expect(text).to eq 'Test'
#   end
end
