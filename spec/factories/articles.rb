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
    title { FFaker::Book.title }
    content { FFaker::Lorem.paragraphs.join("\n\n") }
    tags { Array.new(3) { FFaker::Lorem.word }.uniq }
    user

    after(:build) do |article|
      article.cover.attach(
        io: File.open(Rails.root.join('spec', 'support', 'assets', 'sample.jpeg')),
        filename: 'sample.jpeg',
        content_type: 'image/jpeg'
      ) if article.respond_to?(:cover) && article.cover.blank?
    end
  end
end
