module Bootcamp
  
  # The Whiskey Locker is like a utility closet
  # Put misc methods in here.
  module WhiskeyLocker
    # ANSI colors http://www.termsys.demon.co.uk/vtansi.htm
    COLORS = {
      :black  => "\e[30m", 
      :red    => "\e[31m", 
      :green  => "\e[32m",
      :yellow => "\e[33m",
      :blue   => "\e[34m",
      :magenta=> "\e[35m",
      :cyan   => "\e[36m",
      :white  => "\e[37m",
      :reset  => "\e[0m"
    }
    
    def root_location
      File.expand_path(File.join(File.dirname(__FILE__), '..'))
    end
    
    def soundoff(words, color) # like you got a pair...
      STDOUT.puts "#{COLORS[color]}#{words}#{COLORS[:reset]}"
    end
    
  end
  
end