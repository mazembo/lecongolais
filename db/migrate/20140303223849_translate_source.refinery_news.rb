# This migration comes from refinery_news (originally 20120129230839)
# This migration comes from refinery_news (originally 8)
class TranslateSource < ActiveRecord::Migration

  def up
    unless Refinery::News::Item::Translation.column_names.map(&:to_sym).include?(:source)
      add_column Refinery::News::Item::Translation.table_name, :source, :string
    end
  end

  def down
    if Refinery::News::Item::Translation.column_names.map(&:to_sym).include?(:source)
      remove_column Refinery::News::Item::Translation.table_name, :source
    end
  end

end