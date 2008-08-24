log = RAILS_DEFAULT_LOGGER

log.info "starting up SUHV plugin ..."

gem 'soap4r' 
require 'suhv_serviceDriver'

log.info "... done"