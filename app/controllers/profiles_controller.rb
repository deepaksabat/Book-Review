class ProfilesController < ApplicationController
    before_action :set_profile, only: [:show, :edit, :update, :destroy]
   
	

		def show
			@profile = Profile.find(params[:id])
		end

		def new
		end

		def edit
			@profile = current_user.profile
		end


          def update
               @profile = Profile.find_by user_id: current_user.id
            if @profile.update(profile_params)
             redirect_to @profile
               else
             render 'edit'
             end 

         end

		

		def destroy
			@profile.destroy
			redirect_to root_path
		end

		private

		def profile_params
			params.require(:profile).permit(:name, :birthday, :gender, :tel, :address, :image, :user_id)
		end

		def set_profile
			@profile = Profile.find(params[:id])
		end
end
