require 'rails_helper'
RSpec.describe User, type: :model do
  context 'name validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(15) }
    it { should allow_value('Pedro').for(:name) }
    it { should_not allow_value('1234').for(:name) }
  end
  context 'password validations' do
    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_equal_to(8) }
  end
  context 'email validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should allow_value('a@b.com').for(:email) }
    it { should_not allow_value('noemail').for(:email) }
  end
end
