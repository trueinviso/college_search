module CollegeScorecard
  module Queries
    class ByName
      def initialize(name)
        @name = name
      end

      def call
        Translators::ByName.new(data).call
      end

      private

      attr_reader :name

      def data
        JSON.parse(client.get("schools", params).body)
      end

      def client
        @client ||= ::CollegeScorecard::Client.new
      end

      def params
        {
          "school.name" => name,
          "fields" => "id,school.name,school.city,school.state,location.lat,location.lon",
          "per_page" => 1,
        }
      end
    end
  end
end
