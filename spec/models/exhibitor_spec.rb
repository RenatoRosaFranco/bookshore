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

require 'rails_helper'

RSpec.describe Exhibitor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
