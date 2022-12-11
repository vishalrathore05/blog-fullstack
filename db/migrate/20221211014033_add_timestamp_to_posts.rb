class AddTimestampToPosts < ActiveRecord::Migration[7.0]
  def change
    #add new column but allow nu;; values
    add_timestamps :posts, null:true

    #backfill existing record with created_at and updated_at
    #value making clear that the records are faked
     long_ago = DateTime.new(2000, 1, 1)
     Post.update_all(created_at: long_ago, updated_at: long_ago)


     #change not null contraints
     change_column_null :posts, :created_at, false
     change_column_null :posts, :updated_at, false
  end
end
