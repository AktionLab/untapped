class UserPresenter < BasePresenter
  presents :user

  def avatar
    if user.avatar.url.nil?
      h.image_tag 'ghost.png'
    else
      h.image_tag user.avatar.url
    end
  end

  def name
    w = user.name.split
    w[0] + " " + w[w.length-1][0]
  end

  def location
    "#{user.city}, #{user.state}"
  end

  def public_wishlist_items
    user.wishlist.products
  end

  def link_to
    h.link_to name, h.user_path(user) 
  end
end
