require "rubygems"
gem 'soap4r'

$:.unshift File.join(File.dirname(__FILE__), "..", "gen")

require "suhv_service_stubDriver"

class SUHVService
  
  def self.league_code_for(team)
    league_codes = {
      :h3_kf => "158"
    }
    
    league_codes[team]
  end
end