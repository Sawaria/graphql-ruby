class Mutations::DeleteUser < Mutations::BaseMutation
  argument :id, Integer, required: true

  field :user, Types::UserType, null: false

  def resolve(id:)
    user = User.find(id)
    user.destroy!

    { user: user }
  end
end
