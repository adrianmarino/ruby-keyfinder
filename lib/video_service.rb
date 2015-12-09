require "active_support/all"

class VideoService
  URL = "https://www.youtube.com/watch?v="

  def initialize(location)
    @location = location
  end

  def download(hash)
    file_path = "#{@location}/#{hash}.mp4"
    App.logger.debug("download video with hash: #{hash} to #{file_path}")
    silence_warnings { new_downloader(hash).download_video }
    file_path
  end

  private

  def new_downloader(hash)
    YoutubeDl::YoutubeVideo.new("#{URL}#{hash}", location: @location)
  end
end
