# encoding: utf-8

module Atndr

  class User < Event
    
    URL_BASE = "http://api.atnd.org/events/users/"
    
    attr_accessor :options
    
    def initialize
      @options = {}
    end
  
    def get_user(opt = {})
      @options = opt
      send_api
    end
  end
end

