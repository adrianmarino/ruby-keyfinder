class VideoService
  def initialize(a_download_path)
    @download_path = a_download_path
  end

  def download(a_video_hash)
    VideoDownloader.new(@download_path).download(a_video_hash)
  end
end
