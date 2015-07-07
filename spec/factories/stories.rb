# == Schema Information
#
# Table name: stories
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :story do
    description { Faker::Lorem.paragraph(3) }
  end
end
