class SchoolApplication < ApplicationRecord
  belongs_to :wizard
  belongs_to :house

  after_initialize :set_defaults, if: :new_record?

  enum status: %i[pending approved denied]

  def approve
    return unless pending?
    transaction do
      update(status: :approved)
      wizard.update(house_id: house.id)
    end
  end

  def deny
    return unless pending?
    update(status: :denied)
  end

  private

    def set_defaults
      self.status = :pending
    end
end
