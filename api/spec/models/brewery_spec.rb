require 'rails_helper'

RSpec.describe Brewery, type: :model do
  it "should have a factory" do
    expect(FactoryGirl.build(:brewery)).to be_valid
  end

  context "validations" do
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:address) }
  end
end
