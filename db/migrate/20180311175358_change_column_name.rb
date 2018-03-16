class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
     rename_column :scores, :score, :strokes
  end
end
