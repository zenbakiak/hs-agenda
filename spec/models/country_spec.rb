require 'rails_helper'

RSpec.describe Country, type: :model do

  let(:country) { FactoryGirl.build(:country) }
  subject { country }

  context 'attributes' do
    it { should respond_to(:name) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should be_valid }
  end

  context 'associations' do
    it { should have_many :states }
  end
end
