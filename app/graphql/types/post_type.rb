module Types
  class PostType < Types::BaseObject
    field :id, Integer, null: false
    field :title, String, null: true
    field :body, String, null: true
  end
end
