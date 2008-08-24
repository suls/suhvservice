require 'wsdl/soap/wsdl2ruby' 

namespace :suhv_service do 

  desc "Generate SOAP stubs for SUHV service" 
  # task :generate => [:environment] do 
  task :generate do 
    begin
      wsdl2ruby('suhv_service', 'SUHV', File.dirname(__FILE__) + "/../lib/SwissUnihockey.wsdl") 
    rescue SocketError => err
      puts "couldn't contact swissunihockey.ch server"
    end
    
  end
  
  desc "Generate SOAP stubs for SUHV service" 
  # task :generate => [:environment] do 
  task :generate_web do 
    begin
      wsdl2ruby('suhv_service', 'SUHV', 'http://www.swissunihockey.ch/weblounge/webservices/league?wsdl') 
    rescue SocketError => err
      puts "couldn't contact swissunihockey.ch server"
    end
    
  end 

end

private 

def wsdl2ruby(name, module_name, url) 
  g = WSDL::SOAP::WSDL2Ruby.new 
  g.location = url 
  g.basedir = File.dirname(__FILE__) + "/../gen" 
  g.opt['classdef'] = name 
  g.opt['driver'] = nil 
  g.opt['module_path'] = module_name 
  g.opt['mapping_registry'] = true 
  g.opt['force'] = true 
  g.run 
end