# Install hook code here
Dir.chdir File.join(File.dirname(__FILE__), '../../..') do
  `rake suhv_service:generate `
end