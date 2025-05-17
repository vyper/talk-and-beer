# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@talkandbeer.net'
  layout 'mailer'
end
