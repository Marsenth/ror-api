class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  before_create :set_ulid_id

  private

  def set_ulid_id
    print "THIS IS A CUSTOM BEFORE_CREATE"
    self.id = ULID.generate.downcase
  end
end
