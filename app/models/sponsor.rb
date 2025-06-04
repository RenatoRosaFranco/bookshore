# == Schema Information
#
# Table name: sponsors
#
#  id         :integer          not null, primary key
#  name       :string
#  logo       :string
#  kind       :integer
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sponsors_on_user_id  (user_id)
#

# frozen_string_literal: true

class Sponsor < ApplicationRecord
  # Uploader
  has_one_attached :logo

  # Associations
  belongs_to :user
end
