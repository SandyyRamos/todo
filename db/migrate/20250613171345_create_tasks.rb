class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :date_due
      t.datetime :date_done
      t.float :estimated_hour
      t.integer :status, default: 0
      t.string :tag, array:true, default: [] #esto solo se puede hacer porque se usa postgresql
      t.integer :priority
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
