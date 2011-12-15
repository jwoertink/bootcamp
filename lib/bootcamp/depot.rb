module Bootcamp
  class Depot < Bootcamp::Base
    # These are helper methods used by the worker
    module Helpers
      # Get the users auth token
      def authentication_token
        @auth_token ||= JSON.parse(File.read(File.join(ENV["HOME"], ".jshq")))["authentication_token"]
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

      # Endpoint url based on environment
      def jshq_url
        @source_url ||= JSON.parse(File.read(File.join(ENV["HOME"], ".jshq")))["source"]
      end

      # Reads project metadata file
      def project_metadata
        @metadata ||= JSON.parse(File.read("metadata.json"))
      end
    end
  end
end
