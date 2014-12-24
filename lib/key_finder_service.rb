class KeyFinderService

  def find(a_filename)
    `wine #{path 'KeyFinder.exe'} -f #{path a_filename}`
  end

  private
  def path(a_filename)
    "#{@finder_path}/#{a_filename}"
  end

  def initialize(a_finder_path)
    @finder_path = a_finder_path
  end

end
