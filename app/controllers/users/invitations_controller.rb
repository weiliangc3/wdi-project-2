class Users::InvitationsController < Devise::InvitationsController

  def create
    if (user = User.find_by(email: params[:user][:email]))
      if (attendance = user.attendances.find_by(wedding_id: session[:current_wedding]))
        flash[:error] = "User is already invited to #{attendance.wedding.name}."
        redirect_to new_user_invitation_path
      else
        Attendance.create!(email: user.email, user_id: user.id, wedding_id: session[:current_wedding], status: "unconfirmed", role: "guest")
        flash[:success] = "User found! Invitation for #{user.first_name} to your wedding has been created"
        redirect_to new_user_invitation_path
      end
    else
      Attendance.create!(email: params[:user][:email], wedding_id: session[:current_wedding], status: "unconfirmed", role: "guest")

      self.resource = invite_resource
      resource_invited = resource.errors.empty?

      yield resource if block_given?

      if resource_invited
        if is_flashing_format? && self.resource.invitation_sent_at
          set_flash_message :notice, :send_instructions, :email => self.resource.email
        end
        redirect_to new_user_invitation_path
      else
        redirect_to new_user_invitation_path
      end
    end
  end


end