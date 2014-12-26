class VideoService

  #------------------------------------------------------------------------------
  # Public Methods
  #------------------------------------------------------------------------------

  def download(a_video_hash)
    create.download a_video_hash
  end

  def create
    VideoDownloader.new(@download_path)
  end

  #------------------------------------------------------------------------------
  # Initialize
  #------------------------------------------------------------------------------

  def initialize(a_download_path)
    @download_path = a_download_path
  end

end
