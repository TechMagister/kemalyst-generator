require "teeplate"
require "./field.cr"
require "./entry.cr"

module Kemalyst::Generator
  class Model < Teeplate::FileTree
    directory "#{__DIR__}/model"

    @name : String
    @fields : Array(Field)

    def initialize(@name, fields)
      @fields = fields.map {|field| Field.new(field)}
    end
  end
end
