require "rpg_naming/version"
require "yaml"

module RpgNaming
  class Base
    def initialize(min = 2, max = nil)
      @min, @max = min, max
    end

    [:player, :monster, :male, :female].each do |target|
      class_eval("def #{target}; select_range(RpgNaming.names[pluralize('#{target}')]).sample; end")
    end

    def member
      select_range(RpgNaming.names.values_at("males", "females").flatten).sample
    end

    private

    def select_range(objects)
      objects.select do |o|
        @min <= o.length && (@max.nil? || o.length <= @max)
      end
    end

    def pluralize(word)
      # FIXME
      word.concat("s")
    end
  end

  def self.range(min = 1, max = nil)
    Base.new(min, max)
  end

  [:player, :monster, :member, :male, :female].each do |target|
    module_eval("def self.#{target}; Base.new.#{target}; end")
  end

  def self.names
    @names ||= YAML.load_file(File.expand_path(File.join('../..', 'config', 'names.yml'), __FILE__))
  end
end
