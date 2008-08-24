require File.dirname(__FILE__) + '/spec_helper'
require 'rake'

describe "SUHV service plugin" do
  
  before(:each) do
    # setup_rake_task_and_initialsie_plugin
  end
  
  it "should be able to query the echo function" do
    # require 'suhv_service'
    
    # suhv = SUHV::League.new
    # output = input = "test " * 3
    # suhv.echo(input).should eql(output)
  end

  after(:each) do
    # cleanup_rake_task
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
   describe "installation" do
     
     require "rake"
       
     # it "should call the suhv_service:generate task" do
     # end
     before(:each) do
       setup_rake_task_and_initialsie_plugin
     end
     
     it "should generate stubs by calling suhv_service:generate task" do
       gen_dir = Dir.entries File.dirname(__FILE__) + "/../gen/"
       gen_dir.size.should be(0)
       
       @rake["suhv_service:generate"].invoke
       
       gen_dir.size.should be(3)
     end
     
   end
  
end

def setup_rake_task_and_initialsie_plugin
  @rake = Rake::Application.new
  Rake.application = @rake
  load File.dirname(__FILE__) + "/../Rakefile"
  # load File.dirname(__FILE__) + "/../tasks/suhv_service_tasks.rake"
  
  @rake["clobber"].invoke
  @rake["suhv_service:generate"].invoke
end

def cleanup_rake_task
  @rake = nil
end