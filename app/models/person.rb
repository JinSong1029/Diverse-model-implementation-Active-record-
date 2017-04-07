class Person < ActiveRecord::Base
  belongs_to :master, class_name: 'Person', primary_key: :master_id
  has_many :disciples, class_name: 'Person', foreign_key: :master_id

  def subdisciples 
    Person.where(master_id: self.disciples.pluck(:id))
  end
end
