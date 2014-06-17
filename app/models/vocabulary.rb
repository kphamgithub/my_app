class Vocabulary < ActiveRecord::Base
   has_many :lessonvocas
   has_many :lessons, :through => :lessonvocas
end
