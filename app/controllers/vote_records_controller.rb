class VoteRecordsController < ApplicationController
  def index
    @congressmen = Congressman.find(zip: params[:zip])
    # @vote_records = VoteRecord.search(congressman: congressman)
  end

  attr_reader :vote_records, :congressmen
  helper_method :vote_records, :congressmen
  private :vote_records, :congressmen
end
