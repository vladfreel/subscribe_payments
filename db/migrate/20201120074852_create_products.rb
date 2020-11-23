class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :stripe_plan_name
      t.string :paypal_plan_name
    end
  end
end
