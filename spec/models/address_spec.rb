require 'rails_helper'

RSpec.describe Address, type: :model do
  let(:address) { FactoryGirl.build(:address) }
  subject { address }

  context 'attributes' do
    it { should respond_to(:street) }
  end

  context 'associations' do
    it { should belong_to :country }
    it { should belong_to :state }
    it { should belong_to :contact }
  end
end
