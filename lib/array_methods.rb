class ArrayMethods

	def delete_strings(*elements)
		elements.delete_if {|element| element.is_a?(String)}
	end

	def reject_strings(*elements)
		elements.reject {|element| element.is_a?(String)}
	end

	def select_integers(*elements)
		elements.select {|element| element.is_a?(Integer)}
	end

	def keep_integers(*elements)
		elements.keep_if {|element| element.is_a?(Fixnum)}
	end

end