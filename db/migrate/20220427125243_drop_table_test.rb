class DropTableTest < ActiveRecord::Migration[6.1]
  def change
    drop_table :tests, force: :cascade
  end
end
