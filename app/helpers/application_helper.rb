module ApplicationHelper

  def is_follower(follower_id)
    follower = Follower.find_by_user_id_and_follower_id follower_id, current_user.id
    if follower
      user = User.find follower_id
       p "----------------------------"
      p user.username
      return user.username.to_s
    else
      return false
    end
  end

  def is_following(follower_id)
    user = current_user
    following = Follower.find_by_user_id_and_follower_id user.id,follower_id
    if following
      return true
    else
      return false
    end
  end

end
