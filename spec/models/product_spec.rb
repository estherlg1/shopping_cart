require 'rails_helper'

RSpec.describe Product, type: :model do

    let(:valid_product) { create(:product) }

    describe "fields" do
        it { should have_db_column(:name).of_type(:string) }
        it { should have_db_column(:description).of_type(:text) }
        it { should have_db_column(:price).of_type(:integer) }
    end

    describe "validations" do
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:description) }
        it { should validate_presence_of(:price) }
    end

end