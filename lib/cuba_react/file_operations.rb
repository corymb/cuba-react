module CubaReact
  module FileOperations
    extend self
    def get_absolute_path(file)
      location = File.dirname(__FILE__)
      "#{location}/files/#{file}"
    end

    def create_dirs
      @dirs = ['views', 'js']
      puts 'Creating the following dirs: ' + @dirs.join(' ')
      FileUtils.makedirs @dirs
    end

    def create_views(template=:mote)
      # TODO: Add support for other template languages
      puts 'Creating view files...'
      files = ['layout.mote', 'home.mote']
      @view_files = files.map { |file| get_absolute_path(file) }
      FileUtils.cp(@view_files, 'views')
    end

    def create_js(template=:mote)
      puts 'Creating js files...'
      @js_files = ['jquery.js', 'react.rb'].map { |file| get_absolute_path(file) }
      FileUtils.cp(@js_files, 'js')
    end

    def delete_dirs
      FileUtils.rm_rf 'views'
      FileUtils.rm_rf 'js'
    end

    def run_generator
      existing_files = []
      files_to_create = [
        'views/layout.mote',
        'views/home.mote',
        'js/react.rb',
        'js/jquery.js'
      ]
      files_to_create.each do |file|
        if File.exists? file
          existing_files << file
        end
      end
      if not existing_files.empty?
        raise IOError, "Move or rename the following files to use this generator: #{existing_files}"
      end

      puts 'Running generator'
      create_dirs
      create_views
      @view_files.map { |file| puts file }
      create_js
      @js_files.map { |file| puts file }
      puts 'Done!'
    end
  end
end
