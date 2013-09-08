class Holidayform < ActiveRecord::Base
REGEX= /[0-9]/
validates :budget,presence: true, length: {maximum: 8}, format: {with: REGEX}
end
