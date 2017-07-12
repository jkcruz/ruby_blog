class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # around_action :rescue_from_fk_constraint, only: [:destroy]
  # def rescue_from_fk_constraint
  # 	begin
  # 		yield
  # 	rescue ActiveRecord::InvalidForeignKey
  # 	end
  # end
end
