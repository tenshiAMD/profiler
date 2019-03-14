require "spec_helper"

RSpec.describe Profiler::ContactNumber, type: :model do
  describe "db" do
    context "columns" do
      it { should have_db_column(:record_type).of_type(:string).with_options(null: false) }
      it { should have_db_column(:record_id).of_type(:integer).with_options(null: false) }
      it { should have_db_column(:type).of_type(:string) }
      it { should have_db_column(:label).of_type(:string).with_options(null: false, default: "") }
      it { should have_db_column(:content).of_type(:string).with_options(null: false, default: "") }
      it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
      it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    end

    context "indexes" do
      it { should have_db_index(%i[record_type record_id]) }
      it { should have_db_index(%i[type content label record_type record_id]).unique(true) }
    end
  end

  describe "validations" do
    subject { build(:contact_number) }

    context "presence" do
      it { should validate_presence_of(:label) }
      it { should validate_presence_of(:content) }
    end

    context "uniqueness" do
      it do
        should validate_uniqueness_of(:content).
          scoped_to(%i[type label record_type record_id]).ignoring_case_sensitivity
      end
    end

    it { is_expected.to be_valid }
  end

  describe "associations" do
    context "belongs_to" do
      it { should belong_to(:record) }
    end
  end
end
