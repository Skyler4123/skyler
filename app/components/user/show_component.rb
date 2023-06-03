# frozen_string_literal: true

class User::ShowComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end

end
