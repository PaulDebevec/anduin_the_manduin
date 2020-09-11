class QuoteService
  def self.get_quote
    request = conn.get('/quote')
    quote_obj = JSON.parse(request.body, symbolize_names: true)
    @quote = Quote.new(quote_obj)
  end

  private
  def self.conn
    Faraday.new('https://jam-session-ms.herokuapp.com')
  end
end
