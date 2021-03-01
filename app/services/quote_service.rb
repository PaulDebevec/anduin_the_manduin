class QuoteService
  def self.get_quote
    response = conn.get('/random')
    quote_obj = JSON.parse(response.body, symbolize_names: true)
    @quote = Quote.new(quote_obj)
  end

  private
  def self.conn
    Faraday.new('http://api.quotable.io')
  end
end
