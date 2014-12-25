class KeyFinderService

  def key_of(a_video_hash)
    video_filename = @video_service.download video_id
    find video_filename
  end

  private
  def find(a_filename)
    `wine #{path 'KeyFinder.exe'} -f #{path a_filename}`
  end

  def path(a_filename)
    "#{@finder_path}/#{a_filename}"
  end

  def initialize(a_finder_path, a_video_service)
    @finder_path = a_finder_path
    @video_service = a_video_service
  end

end
