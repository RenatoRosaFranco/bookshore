# == Schema Information
#
# Table name: exhibitors
#
#  id           :integer          not null, primary key
#  name         :string
#  logo         :string
#  booth_number :integer
#  shed         :integer
#  user_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_exhibitors_on_user_id  (user_id)
#

class Exhibitor < ApplicationRecord
  # Uploader
  has_one_attached :logo

  # Enum
  enum :shed, { shed_a: 0, shed_b: 1 }

  # Associations
  belongs_to :user
end
