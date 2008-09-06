require File.dirname(__FILE__) + '/spec_helper'

require "suhv_service"

describe "SUHV service plugin" do
  
  before(:each) do
    @suhv = SUHV::League.new
  end
  
  it "should be able to query the echo function" do
    output = input = "test " * 3
    @suhv.echo(input).should eql(output)
  end
  
end

describe "SUHV league codes" do
  it "should be defined in a constant LEAGUE_CODES" 
  it "should return league code 111 for 'Swiss Mobiliar League Herren'"
end
