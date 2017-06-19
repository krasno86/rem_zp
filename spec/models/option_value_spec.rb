require 'rails_helper'

RSpec.describe OptionValue, type: :model do
  # context 'OptionValue model connection' do
  #   it { expect belong_to(:proposal) }
  #   it { expect belong_to(:option) }
  # end
  #
  # context 'OptionValue db column' do
  #   it { expect have_db_column(:value).of_type(:string) }
  #   it { expect have_db_column(:proposal_id).of_type(:integer) }
  #   it { expect have_db_column(:option_id).of_type(:integer) }
  # end

  describe 'OptionValue validation' do
    let(:option1) { FactoryGirl.build(:option) }
    # let(:proposal1) { FactoryGirl.build(:proposal) }
    # let(:option_value_valid) { FactoryGirl.build(:option_value, proposal_id: 1, option: option1) }
    let(:option_value_valid) { FactoryGirl.build(:option_value, proposal_id: 1, option_id: 1) }

    let(:option_value_invalid) { FactoryGirl.build(:option_value, value: '') }

    it 'is valid OptionValue with valid attributes' do
      p option_value_valid
      expect(option_value_valid).to be_valid
    end

    it 'is invalid OptionValue with blank attributes' do
      p option_value_invalid
      expect(option_value_invalid).not_to be_valid
    end

  end
end
