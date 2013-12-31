ENV['RAILS_ENV'] = ENV['RACK_ENV'] = 'test'

Bundler.require(:default, :test)

require File.expand_path('../dummy/config/environment.rb',  __FILE__)

Rails.backtrace_cleaner.remove_silencers!

require_relative '../rails/yaml'