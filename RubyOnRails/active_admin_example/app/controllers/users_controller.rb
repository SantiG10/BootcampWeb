class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:name, :document, :age)
    end
end

