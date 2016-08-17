class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body
      t.references :question, index: true, foreign_key: { on_delete: :cascade }

      t.timestamps null: false
    end
  end
end
