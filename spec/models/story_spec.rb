# == Schema Information
#
# Table name: stories
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Story, type: :model do
  it "is valid with a description" do
    expect(build(:story)).to be_valid
  end

  it "should not be valid without a description" do
    story = Story.new
    expect(build(:story, description: nil)).to_not be_valid
  end
end
