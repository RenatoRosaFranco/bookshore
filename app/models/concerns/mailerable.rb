# frozen_string_literal: true

module Mailerable
  extend ActiveSupport::Concern

  included do
    def mail_to(mailer_klass, method, object = self, deliver_method = :deliver_now)
      mailer_klass.send(method, object).send(deliver_method)
    rescue StandardError => e
      Rails.logger.error("Ocorreu um erro ao enviar o e-mail. #{e}")
      raise Exception, e
    end
  end
end
