class BookPage < ActiveRecord::Base

  # As long as we have a logged in user, they can read the book.
  set_policy do
    given { |user| user.present? }
    can :read
  end
end
