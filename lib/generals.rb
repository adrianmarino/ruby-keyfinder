# ----------------------------------------------------------------------------
# Paths
# ----------------------------------------------------------------------------
KEY_FINDER_PATH = "#{ROOT_DIR}/keyfinder"
LOGGER_PATH = "#{ROOT_DIR}/log"
LOGGER_FILE_NAME = "#{LOGGER_PATH}/main.log"

# ----------------------------------------------------------------------------
# Ruby Require
# ----------------------------------------------------------------------------
require 'rubygems'
require 'bundler/setup'
require "require_all"
require "singleton"

# ----------------------------------------------------------------------------
# Bundle require
# ----------------------------------------------------------------------------
puts "Environment: #{ENV['ENV']}" if [:development, :test ].any? {|a_group| ENV['ENV'] == a_group.to_s }
Bundler.require(:default, ENV['ENV'])

# ----------------------------------------------------------------------------
# Project require
# ----------------------------------------------------------------------------
require_all "#{ROOT_DIR}/lib"
require_all "#{ROOT_DIR}/config"
