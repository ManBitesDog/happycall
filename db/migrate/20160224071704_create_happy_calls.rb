class CreateHappyCalls < ActiveRecord::Migration
  def change
    create_table :happy_calls do |t|
      t.date :calldate
      t.string :brnm
      t.string :level
      t.string :empnm
      t.string :scrno
      t.text :content
      t.string :team
      t.string :callee
      t.date :happycalldate
      t.text :happycallcontent
      t.text :memo
      t.string :calltype

      t.timestamps null: false
    end
  end
end
