require 'rails_helper'

RSpec.describe Country, type: :model do

  let(:country) { FactoryGirl.build(:country) }
  subject { country }

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should be_valid }
  end

  context 'associations' do
    it { should have_many :states }
  end
end
