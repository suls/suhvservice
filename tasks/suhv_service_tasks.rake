require "rubygems"
gem "soap4r"
require 'wsdl/soap/wsdl2ruby' 

namespace :suhv do 

  desc "Generate SOAP stubs for SUHV service" 
  task :generate do 
    wsdl2ruby('suhv_service_stub', 'SUHV', File.dirname(__FILE__) + "/../lib/SwissUnihockey.wsdl") 
  end
  
  desc "Generate SOAP stubs for SUHV service" 
  task :generate_web do 
    begin
      wsdl2ruby('suhv_service_stub', 'SUHV', 'http://www.swissunihockey.ch/weblounge/webservices/league?wsdl') 
    rescue SocketError => err
      puts "couldn't contact swissunihockey.ch server"
    end
    
  end 

end

private 

def wsdl2ruby(name, module_name, url, dir=File.dirname(__FILE__) + "/../gen") 
  g = WSDL::SOAP::WSDL2Ruby.new 
  g.location = url 
  g.basedir = ENV["SUHV_GEN_DIR"] || dir
  
  if ENV["SUHV_LOGGER"]
    g.logger = Logger.new(ENV["SUHV_LOGGER"])
  end
  
  g.opt['classdef'] = name 
  g.opt['driver'] = nil 
  g.opt['module_path'] = module_name 
  g.opt['mapping_registry'] = true 
  g.opt['force'] = true 
  # g.opt['type'] = "client"
  g.run 
end