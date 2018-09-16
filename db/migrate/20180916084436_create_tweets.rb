class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :title
      t.text   :body
      t.text   :image

      t.timestamps
    end
  end
end
