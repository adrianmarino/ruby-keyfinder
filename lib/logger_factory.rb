require "logger"

class LoggerFactory
	include Singleton

	#------------------------------------------------------------------------------
	# Attributes
	#------------------------------------------------------------------------------

	attr_reader :logger

	#------------------------------------------------------------------------------
	# Private Methods
	#------------------------------------------------------------------------------

	private
	def create_log_path
		FileHelper.create_path AppConfig::LOGGER_PATH
	end

	#------------------------------------------------------------------------------
	# Initialize
	#------------------------------------------------------------------------------

	def initialize
		create_log_path
		@logger = Logger.new AppConfig::LOGGER_FILE_NAME
	end
end
