

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
		elements.sort! { |x,y| x[-1, 1] <=> y[-1, 1] } 
		return elements 
	end

# THESE TWO METHODS DO THE SAME!! Returning the value of the 
# index or, if value outside of range, return a default.

	def return_index_or_default(items, index, default_value)
		if index < 0 && items.length < index.abs
			return default_value
		elsif index >= 0 && items.length-1 < index
			return default_value
		else
			return items[index] 
		end
	end

	def better_return_index_or_default(items, index, default_value)
		items.fetch(index, default_value)
	end
end