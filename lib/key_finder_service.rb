class KeyFinderService
  def initialize(a_finder_path, a_video_service)
    @finder_path = a_finder_path
    @video_service = a_video_service
  end

  def key_of(a_video_hash)
    video_filename = @video_service.download a_video_hash
    find video_filename
  end

  private

  def find(a_filename)
    key = run_key_finder_for a_filename
    FileHelper.delete path a_filename
    key
  end

  def run_key_finder_for(a_filename)
    `wine #{path 'KeyFinder.exe'} -f #{path a_filename}`
  end

  def path(a_filename)
    "#{@finder_path}/#{a_filename}"
  end
end
