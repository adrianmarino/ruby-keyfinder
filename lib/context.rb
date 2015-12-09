class Context
  include Singleton

  attr_reader :key_finder

  def initialize
    @key_finder ||= KeyFinderService.new(VideoService.new(AppConfig::TMP_PATH))
  end
end
