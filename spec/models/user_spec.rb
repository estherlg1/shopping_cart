require 'rails_helper'

RSpec.describe User, type: :model do

  let(:test_user) { create(:user) }

    describe "fields" do
        it { should have_db_column(:email).of_type(:string) }
        it { should have_db_column(:encrypted_password).of_type(:string) }
    end

    describe "validations" do
        it { should validate_presence_of(:email) }
        it { should validate_presence_of(:encrypted_password) }
    end

end
