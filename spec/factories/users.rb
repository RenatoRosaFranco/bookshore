# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { '123456' }
    admin { false }

    trait :admin do
      admin { true }
    end

    trait :engineer do
      email { 'renato.franco@oktoberfestmissoes.com.br' }
      admin { true }
    end
  end
end
