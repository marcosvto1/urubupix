require "bundler"
Bundler.require

APP_ROOT = File.expand_path("..", __dir__)

Dir.glob(File.join(APP_ROOT, 'app', 'adapters', 'controllers', '*.rb')).each { |file| require file }

Dir.glob(File.join(APP_ROOT, 'app', 'adapters' 'repositories', '*.rb')).each { |file| require file }

Dir.glob(File.join(APP_ROOT, 'app', 'model', '*.rb')).each { |file| require file }

Dir.glob(File.join(APP_ROOT, 'app', 'usecases', '**', '*.rb')).each { |file| require file }

require File.join(APP_ROOT, 'config', 'database')
