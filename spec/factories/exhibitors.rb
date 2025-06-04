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

FactoryBot.define do
  factory :exhibitor do
    name { "MyString" }
    logo_url { "MyString" }
    booth_number { 1 }
    shed { 1 }
    user { nil }
  end
end
