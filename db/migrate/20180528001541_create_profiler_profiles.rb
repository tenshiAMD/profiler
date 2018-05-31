class CreateProfilerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiler_profiles do |t|
      t.references  :record, polymorphic: true, null: false, index: true
      t.string      :reference_number, null: false, default: '', index: { unique: true }
      t.string      :first_name, null: false, default: ''
      t.string      :middle_name, null: false, default: ''
      t.string      :last_name, null: false, default: ''
      t.string      :suffix_name, null: false, default: ''
      t.integer     :gender, null: false, default: 0
      t.integer     :civil_status, null: false, default: 0
      t.date        :birth_date

      t.timestamps
    end
    change_column :profiler_profiles, :record_type, :string, null: false
  end
end
