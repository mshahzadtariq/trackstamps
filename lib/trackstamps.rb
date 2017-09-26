module Trackstamps
  extend ActiveSupport::Concern

  included do

    before_save :set_updater
    before_create :set_creator

    belongs_to :updater, class_name: "User", foreign_key: "updated_by", optional: true
    belongs_to :creator, class_name: "User", foreign_key: "created_by", optional: true

    protected

    def set_updater
      return unless Trackstamps.current_user
      self.send("#{:updated_by}=", Trackstamps.current_user.id)
    end

    def set_creator
      return unless Trackstamps.current_user
      self.send("#{:created_by}=", Trackstamps.current_user.id)
    end

  end

  class << self
    def current_user
      Thread.current[:current_user]
    end
  end
end
