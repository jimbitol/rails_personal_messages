class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :from
      t.string :subject
      t.string :body
      t.boolean :copied

      t.timestamps
    end
  end
end
