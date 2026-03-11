class AddPlaceIdToEntries < ActiveRecord::Migration[8.1]
  def change
    # guard against the column already existing (it looks like it was added
    # manually or by a partial migration run) so that the migration can still
    # be marked as run without blowing up in environments where the schema is
    # already up to date.
    unless column_exists?(:entries, :place_id)
      add_column :entries, :place_id, :integer
    end
  end
end
