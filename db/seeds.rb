# load env
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'config', 'boot.rb'))

# setup structure for delayed_job
Delayed::Backend::Mongoid::Job.create_indexes
