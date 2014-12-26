class VideoDownloader

  #------------------------------------------------------------------------------
  # Public Methods
  #------------------------------------------------------------------------------

  def download(a_video_hash)
    downloader(a_video_hash).download_video
    "#{a_video_hash}.mp4"
  end

  #------------------------------------------------------------------------------
  # Private Methods
  #------------------------------------------------------------------------------

  private
  def downloader(a_video_hash)
    YoutubeDl::YoutubeVideo.new(buildUrl(a_video_hash), {location: @location})
  end

  def buildUrl(a_video_hash)
    "#{YOUTUBE_URL_PREFIX}#{a_video_hash}"
  end

  #------------------------------------------------------------------------------
  # Initialize
  #------------------------------------------------------------------------------

  def initialize(a_location)
    @location = a_location
  end

  #------------------------------------------------------------------------------
  # Constants
  #------------------------------------------------------------------------------

  YOUTUBE_URL_PREFIX = "https://www.youtube.com/watch?v="

end
