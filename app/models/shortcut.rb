class Shortcut < ActiveRecord::Base
  attr_accessible :keyword, :long_url, :number_of_redirects, :owner
end
