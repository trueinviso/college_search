module CollegeScorecard
  class Client
    def get(path, params = {}, headers=nil)
      connection.get(path, params.merge(api_key), headers)
    end

    private

    def connection
      @connection ||= Faraday.new(url: url)
    end

    def url
      "https://api.data.gov/ed/collegescorecard/v1/"
    end

    def api_key
      { api_key: ENV["COLLEGE_SCORECARD_API_KEY"] }
    end
  end
end