# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  default from: "contato@oktoberfestmissoes.com.br"

  def sended(contact)
    @contact = contact

    mail(
      to: "contato@oktoberfestmissoes.com.br",
      subject: "#{@contact.name}, enviou um email."
    )
  end

  def received(contact)
    @contact = contact

    mail(
      to: @contact.email,
      subject: "Recebemos seu e-mail com sucesso."
    )
  end
end
