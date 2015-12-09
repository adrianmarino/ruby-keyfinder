module Transcoder
  extend self

  def mp4_to_mp3(origen_path, byterate: 192000)
    destination_path = origen_path.gsub(".mp4",".mp3")
    App.logger.debug("Transcode #{origen_path} to #{destination_path} with #{byterate} byterate.")
    `ffmpeg -i #{origen_path} -f mp3 -ab #{byterate} -vn #{destination_path}`
    destination_path
  end
end
