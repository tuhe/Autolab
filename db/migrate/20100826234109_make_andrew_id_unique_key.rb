# frozen_string_literal: true

class MakeAndrewIdUniqueKey < ActiveRecord::Migration[4.2]
  def self.up
    add_index :users, %i[andrewID course_id], { unique: true, name: "users_andrewID_index" }
  end

  def self.down
    remove_index :users, "users_andrewID_index"
  end
end
