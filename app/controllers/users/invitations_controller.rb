class Users::InvitationsController < Devise::InvitationsController

  after_action :add_user_to_company, only: [:create]

  private

  def add_user_to_company
    if @user.present?
      @user.company_users.create(company_id: params[:company_id])
    end
  end

  def invite_resource
     resource_class.invite!(invite_params, current_inviter) do |invitable|
        invitable.update!(role: invite_params[:role])
     end
  end
  def invite_params
    params.require(:user).permit(:name, :email,:invitation_token, :role)
  end

end
