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

      # Should make sure that there is a folder named PROJECT
      # maybe also check manifest? If PROJECT doesn't exist, then raise an error
      def check_project_exists!(project)
        true
      end
    end
  end
end
