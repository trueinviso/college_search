class CollegeSearchController < ApplicationController
  def show
  end

  def create
    @data = CollegeScorecard::Queries::ByName.new(params[:name]).call

    respond_to do |format|
      format.turbo_stream
    end
  end
end