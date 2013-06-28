authorization do
  role :user do
    has_permission_on [:cats, :dogs], :to => [:show, :update] do
      if_attribute :user_id => is { user.id }
    end
  end
end
