# frozen_string_literal: true

class Contact
  include ActiveModel::Model
  include ActiveModel::Validations
  include Mailerable

  attr_reader :name, :phone, :email, :subject, :message

  def initialize(params = {})
    @name = name
    @phone = phone
    @email = email
    @subject = subject
    @message = message

    @mailer = ContactMailer
  end

  def send_email
    mail_to(@mailer, :sended)
    mail_to(@mailer, :received)
  end

  def persisted?
    false
  end
end
