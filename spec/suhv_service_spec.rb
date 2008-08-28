require File.dirname(__FILE__) + '/spec_helper'

require "suhv_service"

describe "SUHV service plugin" do
  
  before(:each) do
    
  end
  
  it "should be able to query the echo function" do
    
    suhv = SUHV::League.new
    output = input = "test " * 3
    suhv.echo(input).should eql(output)
  end

  after(:each) do
    
  end
  
  # describe "generated stubs" do
  #    
  #    before(:each) do
  #      @rake["suhv_service:generate"]
  #      
  #      require 'rubygems'
  #      gem 'soap4r'
  #      require 'suhv_serviceDriver'
  #    end
  #    
  #    it "should be able to query the echo function" do
  #      suhv = SUHV::League.new
  #      output = input = "test " * 3
  #      suhv.echo(input).should eql(output)
  #    end
  #    
  #  end
  #  
   # describe "installation" do
   #   
   #   require "rake"
   #     
   #   # it "should call the suhv_service:generate task" do
   #   # end
   #   before(:each) do
   #     setup_rake_task_and_initialsie_plugin
   #   end
   #   
   #   it "should generate stubs by calling suhv_service:generate task" do
   #     gen_dir = Dir.entries File.dirname(__FILE__) + "/../gen/"
   #     gen_dir.size.should be(0)
   #     
   #     @rake["suhv_service:generate"].invoke
   #     
   #     gen_dir.size.should be(3)
   #   end
   #   
   # end
  
end
