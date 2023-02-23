# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  belongs_to(:actor, { :required => true, :class_name => "Actor", :foreign_key => "actor_id" })
  belongs_to(:cast, { :required => true, :class_name => "Movie", :foreign_key => "actor_id" })
end
