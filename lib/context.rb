class Context
  include Singleton

  attr_reader :key_finder

  def initialize
    @video_service = VideoService.new(AppConfig::KEY_FINDER_PATH)
    @key_finder = KeyFinderService.new(AppConfig::KEY_FINDER_PATH, @video_service)
  end
end
