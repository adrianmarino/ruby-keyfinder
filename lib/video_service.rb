class VideoService

  def download(a_video_hash)
    create.download a_video_hash
  end

  def create
    VideoDownloader.new(@tmp_path)
  end

  def initialize(a_tmp_path)
    @tmp_path = a_tmp_path
  end
end
