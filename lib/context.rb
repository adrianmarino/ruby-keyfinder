class Context
  include Singleton

  #------------------------------------------------------------------------------
  # Attributes
  #------------------------------------------------------------------------------

  attr_reader :key_finder
  
  #------------------------------------------------------------------------------
  # Initialize
  #------------------------------------------------------------------------------

  def initialize
    @video_service = VideoService.new(KEY_FINDER_PATH)
    @key_finder = KeyFinderService.new(KEY_FINDER_PATH, @video_service)
  end

end
