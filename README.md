# Atndr 

* A Ruby wapper for ATND API(http://api.atnd.org/).
* supported version ruby 1.9.x

## Install

    $ gem install atndr


## Usage

* :format is not required.
* Returns a Hash the result.

### Example 

    require "atndr"
    
    opt = {
      :keyword => "ruby",
      :count   => "5",
    }
    obj = Atndr::Event.new
    e = obj.get_event(opt)
    return if e.empty?
    e.each do |ev|
      p ev["title"]
    end
    
    opt_u = {
      :nickname => "t_ramu",
      :count   => "5",
    }
    obj = Atndr::User.new
    e = obj.get_user(opt_u)
    return if e.empty?
    e.each do |ev|
      p ev["title"]
    end
    


## Copyright

Copyright (c) 2012 ramtiga, released under the MIT license.

