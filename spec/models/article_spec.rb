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

require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
