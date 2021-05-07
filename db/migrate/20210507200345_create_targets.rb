class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
      t.integer :engagement_id
      t.string :ipaddress
      t.string :hostname
      t.string :sysinfo
      t.string :vulns
      t.string :log
      t.string :loot
      t.string :status

      t.timestamps
    end
  end
end
