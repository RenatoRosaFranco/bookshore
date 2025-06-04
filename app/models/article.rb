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

class Article < ApplicationRecord
  # Uploader
  has_one_attached :cover

  # Associations
  belongs_to :user

  # ActionText
  has_rich_text :content
end
