class CreateProfilerInformations < ActiveRecord::Migration[4.2]
  def change
    create_table :profiler_informations do |t|
      t.references  :record, polymorphic: true, null: false, index: false
      t.string      :type
      t.string      :label, null: false, default: ''
      t.string      :content, null: false, default: ''

      t.index %i[record_type record_id], name: 'index_profiler_informations_on_record_type_and_id'
      t.index %i[type content label record_type record_id], name: 'index_profiler_informations_uniqueness', unique: true

      t.timestamps null: false
    end
    change_column :profiler_informations, :record_type, :string, null: false
  end
end
