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
  it "should be defined in a constant LEAGUE_CODES" do
    SUHV::LEAGUE_CODES.should be_a_kind_of(Hash)
  end
  
  it "should return league code 111 for 'Swiss Mobiliar League Herren'" do
    SUHV::LEAGUE_CODES[111].should eql('Swiss Mobiliar League Herren')
  end
end
