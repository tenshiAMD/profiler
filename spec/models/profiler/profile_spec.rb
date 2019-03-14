require "spec_helper"

RSpec.describe Profiler::Profile, type: :model do
  describe "db" do
    context "columns" do
      it { should have_db_column(:record_type).of_type(:string).with_options(null: false) }
      it { should have_db_column(:record_id).of_type(:integer).with_options(null: false) }
      it { should have_db_column(:reference_number).of_type(:string).with_options(null: false, default: "") }
      it { should have_db_column(:first_name).of_type(:string).with_options(null: false, default: "") }
      it { should have_db_column(:middle_name).of_type(:string).with_options(null: false, default: "") }
      it { should have_db_column(:last_name).of_type(:string).with_options(null: false, default: "") }
      it { should have_db_column(:suffix_name).of_type(:string).with_options(null: false, default: "") }
      it { should have_db_column(:gender).of_type(:integer).with_options(null: false, default: "female") }
      it { should have_db_column(:civil_status).of_type(:integer).with_options(null: false, default: "single") }
      it { should have_db_column(:birth_date).of_type(:date) }
      it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
      it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    end

    context "indexes" do
      it { should have_db_index(%i[record_type record_id]) }
      it { should have_db_index(:reference_number).unique(true) }
    end
  end

  describe "validations" do
    subject { build(:profile) }

    context "presence" do
      it { should validate_presence_of(:first_name) }
      it { should validate_presence_of(:last_name) }
      it { should validate_presence_of(:gender) }
      it { should validate_presence_of(:birth_date) }
      it { should validate_presence_of(:civil_status) }
    end

    context "uniqueness" do
      it { should validate_uniqueness_of(:reference_number) }
    end

    it { is_expected.to be_valid }
  end

  describe "associations" do
    context "belongs_to" do
      it { should belong_to(:record) }
    end
  end
end
