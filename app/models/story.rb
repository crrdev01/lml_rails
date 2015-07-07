# == Schema Information
#
# Table name: stories
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Story < ActiveRecord::Base
  validates :description, presence: true
end
