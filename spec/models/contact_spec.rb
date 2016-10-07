require 'rails_helper'

RSpec.describe Contact, type: :model do
  let(:contact) { FactoryGirl.build(:contact) }
  subject { contact }

  context 'attributes' do
    it { should respond_to(:name) }
    it { should respond_to(:nickname) }
    it { should respond_to(:avatar) }
    it { should respond_to(:email) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should be_valid }
  end

  context 'associations' do
    it { should have_many :addresses }
    # it { should have_many :phones }
    # it { should have_many :social_networks }
  end
end
