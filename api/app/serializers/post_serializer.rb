class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :username, :created_at, :tag, :privacy, :image
  belongs_to :user

  def username
    object.user.name
  end
end
