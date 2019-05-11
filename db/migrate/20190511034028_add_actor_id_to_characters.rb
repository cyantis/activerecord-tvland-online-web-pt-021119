class AddActorIdToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :actor_id, :string
  end
end
