class Elements
  class Element
    def self.name
      class_name = super
      class_name.split('::').last.downcase.to_sym
    end
  end
end

