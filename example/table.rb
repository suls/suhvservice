require "yaml"
require File.dirname(__FILE__)+"/../lib/suhv_service"

# suhv_id = { :dev_id => __YOUR__ID__, :dev_code => __YOUR__CODE__}
# File.open(ENV["HOME"]+"/.suhv_id", "w") { |file| YAML.dump(suhv_id, file) }
suhv_id = File.open(ENV["HOME"]+"/.suhv_id") { |file| YAML.load(file) } 

request = SUHV::League.new

resp = request.tableLeague(suhv_id[:dev_id], suhv_id[:dev_code], 0, 0, SUHV::LEAGUE_CODES.keys[0], 1)
resp.table.each { |table_entry| puts "#{table_entry.rank}. #{table_entry.team}" }