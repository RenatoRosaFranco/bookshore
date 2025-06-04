# frozen_string_literal: true

class User < ApplicationRecord
  # Associations
  has_many :articles, dependent: :destroy
  has_many :exhibitors, dependent: :destroy
  has_many :sponsors, dependent: :destroy

  # Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
