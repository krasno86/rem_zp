require 'rails_helper'

RSpec.describe District, type: :model do
  context 'model connection' do
    it { should belong_to(:city) }
  end

  context 'District db column' do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:city_id).of_type(:integer) }
  end
end
