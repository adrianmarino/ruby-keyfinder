require 'logger'

module App
  extend self

  def logger
    @logger ||= new_logger
  end

  def new_logger
    FileHelper.create_path(AppConfig::LOGGER_PATH)
    Logger.new(AppConfig::LOGGER_FILE_PATH)
  end
end
