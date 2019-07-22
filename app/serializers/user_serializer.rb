class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :account_ids

  def account_ids
    object.accounts.pluck(:id)
  end
end
