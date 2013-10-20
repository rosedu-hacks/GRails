module ApplicationHelper
  def has_contact
    !Contact.find_by_user_id(current_user.id).nil?
  end
end
