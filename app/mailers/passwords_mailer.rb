# frozen_string_literal: true

class PasswordsMailer < ApplicationMailer
  def reset(user)
    @user = user
    mail to: user.email
  end
end
