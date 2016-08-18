class CreateBattle < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.column :player_one_id, :integer
      t.column :player_two_id, :integer
      t.column :victor_id, :integer

      t.timestamps
    end

    add_index :battles, :player_one_id
    add_index :battles, :player_two_id
    add_index :battles, :victor_id
  end
end
