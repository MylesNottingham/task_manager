class Task < ApplicationRecord
  def laundry?
    "laundry".in?(title.downcase) || "laundry".in?(description.downcase)
  end
end
