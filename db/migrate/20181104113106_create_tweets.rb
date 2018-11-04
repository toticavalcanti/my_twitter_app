class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :body
      t.references :user, foreign_key: true
      t.integer :tweet_original_id

      t.timestamps
    end
  end
end
