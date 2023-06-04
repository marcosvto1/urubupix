# frozen_string_literal: true

class User
  attr_accessor :name

  def initialize(name:)
    @name = name
  end

  def to_hash
    hash = {}
    instance_variables.each do |var|
      hash[var.to_s.delete('@')] = instance_variable_get(var)
    end
    hash
  end
end
