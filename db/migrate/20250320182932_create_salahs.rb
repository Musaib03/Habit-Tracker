class CreateSalahs < ActiveRecord::Migration[8.0]
  def change
    create_table :salahs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :salah_name
      t.string :where_prayed
      t.text :prayed_at_home_why
      t.string :prayed_timeliness
      t.text :reason
      t.string :prayed_congregation
      t.time :prayed_time
      t.string :transportation
      t.string :concentration
      t.boolean :sunnah_prayed
      t.boolean :tasbih_done
      t.string :tasbih_concentration

      t.timestamps
    end
  end
end
