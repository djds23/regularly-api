require "administrate/base_dashboard"

class AlbumEmbedDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    album: Field::BelongsTo,
    id: Field::Number,
    embed: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    service_name: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :album,
    :id,
    :embed,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :album,
    :id,
    :embed,
    :created_at,
    :updated_at,
    :service_name,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :album,
    :embed,
    :service_name,
  ].freeze

  # Overwrite this method to customize how album embeds are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(album_embed)
  #   "AlbumEmbed ##{album_embed.id}"
  # end
end
