# ----------------------------------------------------------------------------
# Require
# ----------------------------------------------------------------------------
require 'rubygems'
require 'bundler/setup'
require "require_all"
require "singleton"

# Add requiere for gems in Gemfile
Bundler.require

Bundler.setup(:development) if ENV['ENVIRONMENT'] == 'development'
Bundler.setup(:test) if ENV['ENVIRONMENT'] == 'test'

require_all "#{ROOT_DIR}/lib"
require_all "#{ROOT_DIR}/config"

# ----------------------------------------------------------------------------
# Paths
# ----------------------------------------------------------------------------
KEY_FINDER_PATH = "#{ROOT_DIR}/keyfinder"
LOGGER_PATH = "#{ROOT_DIR}/log"
LOGGER_FILE_NAME = "#{LOGGER_PATH}/main.log"
