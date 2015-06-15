class CreateDummyTransitions < ActiveRecord::Migration
  def change
    create_table :dummy_transitions do |t|
      t.string :to_state, null: false
      t.json :metadata
      t.integer :sort_key, null: false
      t.integer :dummy_id, null: false
      t.boolean :most_recent, null: false
      t.timestamps null: false
    end

    add_index(:dummy_transitions,
              [:dummy_id, :sort_key],
              unique: true,
              name: "index_dummy_transitions_parent_sort")
    add_index(:dummy_transitions,
              [:dummy_id, :most_recent],
              unique: true,
              where: 'most_recent',
              name: "index_dummy_transitions_parent_most_recent")
  end
end
