require 'rails_helper'

RSpec.describe State, type: :model do
  let(:state) { FactoryGirl.build(:state) }
  subject { state }

  context 'attributes' do
    it { should respond_to(:name) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:country_id) }
    it { should be_valid }
  end

  context 'associations' do
    it { should belong_to :country }
  end
end
