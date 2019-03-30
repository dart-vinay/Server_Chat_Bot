class HomeController < ApplicationController
	# before_action :authenticate_user!
	skip_before_action :verify_authenticity_token
  def index
  	@attendance = Attendance.all.find{|a| a.user=current_user}
  end

  def present
  	@attendance = Attendance.where(:user => current_user).update_all("present=present+1")
  end

  def absent
  	@attendance = Attendance.where(:user => current_user).update_all("absent=absent+1")
  end

  def coordinate
  	render status:200
  end

  def imagefile
  	render status: 200
  end
end
