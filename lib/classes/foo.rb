# A Foo class
class Foo
  include ActiveModel::Validations

  attr_accessor :p1, :p2

  validates :p1, presence: true
  validates :p2, presence: true

  def initialize(params = {})
    params.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end
end
