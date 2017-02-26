class SearchService
  def initialize(params)
    @params = params
  end

  def run
    result = []
    words = @params.split(" ")
    words.each do |word|
      ThinkingSphinx.search(word).each do |obj|
        unless result.include?(obj)
          result << obj
        end
      end
    end
    result
  end
end
