class CreateValentines < ActiveRecord::Migration
  def change
    create_table :valentines do |t|
      t.string :title
      t.text :message
    end
  end
end
