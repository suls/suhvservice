require 'rake'

require 'spec/rake/spectask'
require 'rake/rdoctask'
require 'rake/clean'

# require "tasks/suhv_service_tasks"
Rake.application.rake_require 'tasks/suhv_service_tasks'

desc 'Default: run unit tests.'
task :default => :spec

# desc 'Test the suhv_service plugin.'
# Rake::TestTask.new(:test) do |t|
#   t.libs << 'lib'
#   t.pattern = 'test/**/*_test.rb'
#   t.verbose = true
# end

CLOBBER.include('gen/*.rb')

desc "Run all specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = ['--options', 'spec/spec.opts']
end

# desc ""