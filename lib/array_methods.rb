

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

	def inject_sum(*elements)
		elements.inject(:+)
		#or elements.inject(0) {|total, element| total + element}
	end

	def output_sorted_array(*elements)
		elements.sort 
	end

	def output_sorted_array_descending(*elements)
		elements.sort { |x, y| y <=> x}
	end

	def sort_in_place(*elements)
		elements.sort!
		return elements 
	end

	def sort_string_first(*elements)
		elements.sort!
		return elements 
	end

	def sort_string_last(*elements)
		elements.sort! { |x,y| x[-1,1] <=> y[-1,1] } 
		return elements 
	end
end