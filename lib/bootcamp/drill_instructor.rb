module Bootcamp
  
  # DrillInstructor controls the bootcamp with all the different commands
  class DrillInstructor < Bootcamp::Depot
    source_root File.dirname(__FILE__)
    
    desc "new [PROJECT]", "creates a new project with the name PROJECT"
    map "-n" => :new
    method_options %w(framework -f) =>  "core"
    method_options %w(test_suite -t) => "jasmine"
    def new(project = "hello_world")
      @project = project
      say "Generating #{@project} plugin", :blue
      apply File.expand_path(File.join("manifest", "bootstrap.rb"), File.dirname(__FILE__))
      apply File.expand_path("manifest/html.rb", File.dirname(__FILE__))
      #armory = Armory.new
      #armory.checkin
    end
    
    desc "promote PROJECT [LEVEL]", "give your PROJECT a promotion updating the verion by patch, minor, or major"
    map "-p" => :promote
    method_options %w(level -l) => "patch"
    def promote(project)
      # :patch, :minor, :major
      level = options[:level]
      
      say "Promotions not ready yet", :red
    end
    
    desc "compress PROJECT", "minify the scripts for PROJECT"
    map "-c" => :compress
    def compress(project)
      say "Compression not ready yet", :red
    end
    
    desc "deploy PROJECT", "deploys the PROJECT to JSHQ.org"
    map "-d" => :deploy
    def deploy(project)
      say "Deployment not ready yet", :red
    end
  
  end
end




__END__

# This is a working version

require 'thor/group'

module Bootcamp
  
  # Yeah, that's right. 
  # DrillInstructors are decendants of Thor!
  class DrillInstructor < Thor::Group
    include Thor::Actions
    
    argument :name
    class_option :framework, :default => :core, :aliases => ["-f"]
    class_option :test_suite, :default => :jasmine, :aliases => ["-t"]
    
    
    def self.source_root
      File.dirname(__FILE__)
    end
    
    def create_project
      create_file File.join(name, 'lib', "#{name}.js")
      create_file File.join(name, '.gitignore') do
        <<-GIT
        .DS_Store
        *.tmproj
        tmtags
        *.swp
        **/Thumbs.db
        GIT
      end
      create_file File.join(name, "README") do
        <<-DOC
        #{name.capitalize} JavaScript Plugin
        Created: #{Time.now.strftime("%m/%d/%Y")}
        DOC
      end
      create_file File.join(name, 'LICENSE') do
        <<-DOC
       ----------------------------------------------------------------------------
       #{name} #{options[:framework]} plugin
       v 0.0.1
       Dual licensed under the MIT and GPL licenses.
       ----------------------------------------------------------------------------
       Copyright (C) #{Time.now.year} 
       WEBSITE_CAN_GO_HERE
       ----------------------------------------------------------------------------
       Permission is hereby granted, free of charge, to any person obtaining a copy
       of this software and associated documentation files (the "Software"), to deal
       in the Software without restriction, including without limitation the rights
       to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
       copies of the Software, and to permit persons to whom the Software is
       furnished to do so, subject to the following conditions:
       
       The above copyright notice and this permission notice shall be included in
       all copies or substantial portions of the Software.
       
       THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
       IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
       FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
       AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
       LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
       OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
       THE SOFTWARE.
       ----------------------------------------------------------------------------
        DOC
      end
      empty_directory File.join(name, 'vendor')
      empty_directory File.join(name, 'tests')
    end
    
    def get_library
      library = "#{options[:framework]}.js"
      copy_file File.join(Bootcamp.root, 'vendor', library), File.join(name, 'vendor', library)
    end
    
    def setup_template
      apply File.expand_path("formations/html.rb", File.dirname(__FILE__))
    end
    
    def setup_plugin
      apply File.expand_path("formations/#{options[:framework]}.rb", File.dirname(__FILE__))
    end
    
    def setup_tests
      test_suite = options[:test_suite]
      directory File.join(Bootcamp.root, 'vendor', 'test_suites', "#{options[:test_suite]}"), File.join(name, 'tests', "#{options[:test_suite]}")
    end
    
    def armory
      @armory = Armory.new
      @armory.checkin
    end
    
  end
  
end