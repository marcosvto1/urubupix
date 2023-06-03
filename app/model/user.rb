# frozen_string_literal: true

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_hash
    hash = {}
    instance_variables.each {|var| hash[var.to_s.delete('@')] = instance_variable_get(var) }
    hash
  end
end
