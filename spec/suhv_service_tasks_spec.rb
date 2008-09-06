require File.dirname(__FILE__) + '/spec_helper'

require "logger"
require "rake"
require "ftools"

describe "suhv_service rake task" do
  
  EMPTY = 2
  
  before(:all) do
    ENV["SUHV_LOGGER"] = '/dev/null'
  end
  
  before(:each) do
    @rake = Rake::Application.new
    Rake.application = @rake
    load File.dirname(__FILE__) + "/../tasks/suhv_service_tasks.rake"

    @gen_dir_path = File.dirname(__FILE__) + "/../tmp/"
    
    FileUtils.mkdir @gen_dir_path if !File.exists? @gen_dir_path
  end
  
  after(:each) do
    @rake = nil
    FileUtils.rm_rf @gen_dir_path
  end
  
  describe "suhv:generate" do
    it "should generate the requried client stubs" do
      gen_dir = ENV["SUHV_GEN_DIR"] = @gen_dir_path
      Dir.entries(gen_dir).size.should be(EMPTY)

      @rake["suhv:generate"].invoke

      Dir.entries(gen_dir).size.should be(EMPTY + 3)
    end
  end

  describe "suhv:generate_web" do
    it "should generate the required client stubs from the web" do
      gen_dir = ENV["SUHV_GEN_DIR"] = @gen_dir_path
      Dir.entries(gen_dir).size.should be(EMPTY)
    
      @rake["suhv:generate"].invoke
    
      Dir.entries(gen_dir).size.should be(EMPTY + 3)
    end
  end
end
