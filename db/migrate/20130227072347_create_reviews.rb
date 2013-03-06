class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :body
      t.references :performer

      t.timestamps
    end
    add_index :reviews, :performer_id
  end
end
