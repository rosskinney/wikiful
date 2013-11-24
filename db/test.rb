class Physician < ActiveRecord::Base
  has_many :appointments
  belongs_to :contestant_one, class_name: User
  has_many :patients, through: :appointments
end

class Appointment < ActiveRecord::Base
  belongs_to :physician
  belongs_to :patient
end

class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :physicians, through: :appointments
end