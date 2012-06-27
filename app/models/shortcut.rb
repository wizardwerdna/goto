class Shortcut < ActiveRecord::Base
  attr_accessible :keyword, :long_url, :number_of_redirects, :owner

  validates :keyword, 
              :uniqueness => {:message => "'%{value}' already exists"}, 
              :format => {:with => /^[a-zA-Z0-9\-_]+$/, :message=> lambda{|x,y| message_for_bad_keyword_format x,y}}
  validates :long_url, 
              :length => {:minimum => 8, :message => "is too short to be valid ( < 8 characters)"}

  private

  def self.message_for_bad_keyword_format i18_code, data_hash
    data_hash[:value] =~ /([^a-zA-Z0-9\-_])/ 
    "contains an invalid character: '#{$1}'"
  end
end
