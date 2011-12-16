module Bootcamp
  class Depot < Bootcamp::Base
    # These are helper methods used by the worker
    module Helpers
      # Get .jshq variables
      def jshq_config
        @jshq_config ||= JSON.parse(File.read(File.join(ENV["HOME"], ".jshq")))
      end

      # Get the users auth token
      def authentication_token
        jshq_config["authentication_token"]
      end

      # Endpoint url based on environment
      def jshq_url
        jshq_config["source"]
      end

      # Reads project metadata file
      def project_metadata
        @metadata ||= JSON.parse(File.read("metadata.json"))
      end

      # This returns the path to the manifest file FILENAME
      def manifest(filename)
        File.expand_path(File.join("manifest", "#{filename}.rb"), File.dirname(__FILE__))
      end
      
      # Checks for a metadata.json file in the current directory
      def in_plugin_directory?
        File.exists?("metadata.json")
      end
      
      # Make sure we are in a plugin directory when running certain commands
      def ensure_plugin_exists!
        say("Must be in a plugin directory", :red) and exit unless in_plugin_directory?
      end

      #Takes a hash and returns it as a pretty formatted JSON string
      def hash_as_pretty_json_string(hash)
        js = "{\n"
        js << hash.each_pair.map do |k, v|
          "\t\"#{k}\": \"#{v}\""
        end.join(",\n")
        
        js << "\n}"
      end
    end
  end
end
