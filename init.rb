log = RAILS_DEFAULT_LOGGER

log.info "starting up SUHV plugin ..."

gem 'soap4r' 
require 'suhv_service'

log.info "... done"