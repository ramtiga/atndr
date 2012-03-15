# encoding: utf-8

module Atndr
  
  class Event
    
    URL_BASE = "http://api.atnd.org/events/"
    
    attr_accessor :options
    
    def initialize
      @options = {}
    end
    
    def get_event(opt = {})
      @options = opt
      send_api
    end

    private
    def send_api
      response = nil
      events = []
      begin
        open(create_uri) do |f|
          response = JSON.parse(f.read)
          response["events"].each do |event|
            events << event
          end
        end
      rescue OpenURI::HTTPError => e
        events.clear
      end
      return events
    end
    
    def create_uri
      URL_BASE + "?" + query
    end
    
    def query
      @options[:format] = "json"
      @options.map{|k, v| "#{k}=#{v}"}.join("&")
    end
  end
end

