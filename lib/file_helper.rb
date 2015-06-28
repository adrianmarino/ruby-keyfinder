module FileHelper
  def self.delete(a_path)
    File.delete(a_path) if File.exist?(a_path)
  end

  def self.create_path(a_path)
    FileUtils.mkdir_p(a_path) unless File.exist?(a_path)
  end
end
