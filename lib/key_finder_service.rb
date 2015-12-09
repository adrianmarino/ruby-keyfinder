class KeyFinderService
  def initialize(video_service)
    @video_service = video_service
  end

  def key_of(video_hash)
    video_path = @video_service.download(video_hash)
    audio_path = Transcoder.mp4_to_mp3(video_path)
    key = find_key(audio_path)
    FileHelper.delete([video_path, audio_path])
    App.logger.debug("Video: #{video_hash}, Key: #{key}")
    key
  end

  private

  def find_key(audio_path)
    `keyfinder-cli #{audio_path}`.strip
  end
end
