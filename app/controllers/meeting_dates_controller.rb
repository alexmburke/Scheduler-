class MeetingDatesController < ApplicationController

	  def index
  	    @meeting_dates = MeetingDate.all
      end

	  def new
	    @meeting_date = MeetingDate.new
	  end

	  def create
	    @meeting_date = MeetingDate.new(meeting_date_params)
	    
	    @meeting_date.save
	    redirect_to @meeting_date
	  end

	  def show
	  	@meeting_date = MeetingDate.find(params[:id])
	  end

	  def destroy
	    @meeting_date = MeetingDate.find(params[:id])
	    @meeting_date.destroy

	    redirect_to meetingdates_path
	  end
	  
	  private

	    def meeting_date_params
	      params.require(:meeting_date).permit(:date, :book)
	    end

end
