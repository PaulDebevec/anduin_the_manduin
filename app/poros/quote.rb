class Quote
  attr_reader :text, :author
  def initialize(obj)
    @text = obj[:content]
    @author = obj[:author] || 'Unknown Author'
  end
end
