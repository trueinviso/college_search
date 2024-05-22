module CollegeScorecard
  module Queries
    class ByName
      def initialize(name)
        @name = name
      end

      def call
        client.get("schools", params)
      end

      private

      attr_reader :name

      def client
        @client ||= ::CollegeScorecard::Client.new
      end

      def params
        {
          "school.name" => name,
          # "fields" => "id,school.name,school.city,school.state,school.zip,school.ownership,school.school_url,school.price_calculator_url,school.degrees_awarded.predominant,2018.student.size,2018.admissions.admission_rate.overall,2018.cost.avg_net_price.private,2018.cost.avg_net_price.public,2018.aid.federal_loan_rate,2018.aid.median_debt.completers.overall,2018.aid.pell_grant_rate,2018.student"
          "per_page" => 1,
        }
      end
    end
  end
end
