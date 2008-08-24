require "rubygems"
gem 'soap4r'

require File.dirname(__FILE__) + "/../gen/suhv_service"

class SUHVService
  
  def self.league_code_for(team)
    league_codes = {
      :h3_kf => "158"
    }
    
    league_codes[team]
  end
end