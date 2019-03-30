class UserDataController < ApplicationController
	#Index action, photos gets listed in the order at which they were created
	 def index
	  @photo = Record.order('time')
	 end

	 #New action for creating a new photo
	 def new
	  @photo = Record.new
	 end

	 #Create action ensures that submitted photo gets created if it meets the requirements
	 def create
	  @photo = Record.new(photo_params)
	  # p photo_params, "heck"	
	  @photo.user = current_user
	  if @photo.save
	   flash[:notice] = "Successfully added new photo!"
	   redirect_to root_path
	  else
	   flash[:alert] = "Error adding new photo!"
	   render :new
	  end
	 end

	 private

	 #Permitted parameters when creating a photo. This is used for security reasons.
	 def photo_params
	  params.require(:image).permit(:image)
	 end
end
