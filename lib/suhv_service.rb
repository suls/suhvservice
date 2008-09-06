require "rubygems"
gem 'soap4r'

$:.unshift File.join(File.dirname(__FILE__), "..", "gen")

require "suhv_service_stubDriver"

# from http://swissunihockey.ch/weblounge/service/webservice/faq/
lcr = <<LCR
  111=Swiss Mobiliar League Herren
  112=Herren NLB
  113=Herren 1. Liga GF
  114=Herren 2. Liga GF
  115=Herren 3. Liga GF
  211=Swiss Mobiliar League Damen
  212=Damen NLB
  213=Damen 1. Liga GF
  214=Damen 2. Liga GF
  191=U21 A
  192=U21 B
  193=U21 C
  194=U21 D
  161=U16 Inter.
  164=U16 Reg.
  181=U18 Inter.
  184=U18 Reg.
  261=Damen U21 A
  262=Damen U21 B
  123=Herren 1. Liga KF
  124=Herren 2. Liga KF
  125=Herren 3. Liga KF
  126=Herren 4. Liga KF
  223=Damen 1. Liga KF
  224=Damen 2. Liga KF
  314=Junioren A Reg.
  324=Junioren B Reg.
  334=Junioren C Reg.
  344=Junioren D
  354=Junioren E
  414=Juniorinnen A
  424=Juniorinnen B
  434=Juniorinnen C
LCR

leage_codes = {}
lcr.scan(/(\d{3})=(.*)/) do |match| 
  leage_codes.store(match[0].to_i, match[1])
end

SUHV.const_set(:LEAGUE_CODES, leage_codes) unless SUHV.const_defined?(:LEAGUE_CODES)
