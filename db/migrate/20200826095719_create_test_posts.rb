class CreateTestPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :test_posts do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
