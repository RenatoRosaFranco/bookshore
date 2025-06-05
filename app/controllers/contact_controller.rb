# frozen_string_literal: true

class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)

    if contact.send_email
      flash[:success] = "Email enviado com sucesso."
    else
      flash[:error] = "Falha ao enviar e-mail, tente novamente."
    end

    redirect_to contact_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :subject, :message)
  end
end
