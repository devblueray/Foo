class AddGalleryToPortrait < ActiveRecord::Migration
  def change
    add_reference :portraits, :gallery, index: true
  end
end
