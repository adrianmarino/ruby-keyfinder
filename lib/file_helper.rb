module FileHelper
  extend self

  def delete(paths)
    Array(paths).each { |path| File.delete(path) if File.exist?(path) }
  end

  def create_path(path)
    FileUtils.mkdir_p(path) unless File.exist?(path)
  end
end
