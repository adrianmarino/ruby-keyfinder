class VideoDownloader
  YOUTUBE_URL_PREFIX = 'https://www.youtube.com/watch?v='

  def initialize(a_location)
    @location = a_location
  end

  def download(a_video_hash)
    downloader(a_video_hash).download_video
    "#{a_video_hash}.mp4"
  end

  private

  def downloader(a_video_hash)
    YoutubeDl::YoutubeVideo.new(build_url(a_video_hash), location: @location)
  end

  def build_url(a_video_hash)
    "#{YOUTUBE_URL_PREFIX}#{a_video_hash}"
  end
end
