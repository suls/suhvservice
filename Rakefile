require 'rake'

require 'spec/rake/spectask'
require 'rake/rdoctask'
require 'rake/clean'

# require "tasks/suhv_service_tasks"
Rake.application.rake_require 'tasks/suhv_service_tasks'

desc 'Default: run specs.'
task :default => "suhv:generate"

CLOBBER.include(File.dirname(__FILE__)+'/gen/*.rb')

desc "Run all specs."
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = ['--options', 'spec/spec.opts']
end
