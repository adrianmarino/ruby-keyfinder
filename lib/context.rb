class Context
  include Singleton

  attr_reader :video_service, :key_finder

  def initialize
    @video_service = VideoService.new(KEY_FINDER_PATH)
    @key_finder = KeyFinderService.new(KEY_FINDER_PATH)
  end

end
