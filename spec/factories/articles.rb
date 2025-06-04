# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  cover      :string
#  title      :string
#  content    :text
#  tags       :string
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#

FactoryBot.define do
  factory :article do
    cover_url { "MyString" }
    title { "MyString" }
    content { "MyText" }
    tags { "MyString" }
    user { nil }
  end
end
