require 'logger'

class LoggerFactory
  include Singleton

  attr_reader :logger

  def initialize
    create_log_path
    @logger = Logger.new AppConfig::LOGGER_FILE_NAME
  end

  private

  def create_log_path
    FileHelper.create_path AppConfig::LOGGER_PATH
  end
end
