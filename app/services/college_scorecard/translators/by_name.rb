module CollegeScorecard
  module Translators
    class ByName
      def initialize(data)
        @data = data["results"].first
      end

      def call
        return {} if data.blank?

        {
          id: data["id"],
          name: data["school.name"],
          city: data["school.city"],
          state: data["school.state"],
          lat: data["location.lat"],
          lng: data["location.lon"],
        }
      end

      private

      attr_reader :data
    end
  end
end
