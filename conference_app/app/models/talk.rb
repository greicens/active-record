class Talk < ApplicationRecord
  validates :start_time, presence: true
  validates :topic, length: {in: 3..100 }

  def add_default_values
    after_initialize do |talk|
      if !talk.duration || !talk.topic
        talk.duration = 30
        talk.topic = "TBD"
      end
  end
  end
end
