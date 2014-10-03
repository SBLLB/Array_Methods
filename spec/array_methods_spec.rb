require 'array_methods'

describe ArrayMethods do 

let(:test) {ArrayMethods.new}

	context 'sorting lists' do 

		it 'should delete strings from a mixed array' do
			expect(test.delete_strings(1, 2, 'test', 54, 'bye', '99')).to eq([1, 2, 54])
		end

		it 'should reject strings from a mixed array' do 
			expect(test.reject_strings(1, 2, 'test', 54, 'bye', '99')).to eq([1, 2, 54])
		end 

		it 'should select only integers from a mixed array' do 
			expect(test.select_integers(1, 2, 'test', 54, 'bye', '99')).to eq([1, 2, 54])
		end

		it 'should keep only fixnums from a mixed array' do 
			expect(test.keep_integers(1, 2, 'test', 54, 'bye', '99')).to eq([1, 2, 54])
		end

		it 'should sort an array ascending' do 
			expect(test.output_sorted_array(4, 2, 454, 12,)).to eq([2, 4, 12, 454])
		end

		it 'should sort an array descending' do 
			expect(test.output_sorted_array_descending(4, 2, 454, 12,)).to eq([454, 12, 4, 2])
		end

		it 'should sort the array in place' do 
			expect(test.sort_in_place(4, 2, 454, 12,)).to eq([2, 4, 12, 454]) 
		end

		it 'should sort strings in an array by first letter' do 
			expect(test.sort_string_first('testing', 'array', 'methods', 'whoop',)).to eq(['array', 'methods', 'testing', 'whoop']) 
		end

		it 'should sort strings in an array by first letter' do 
			expect(test.sort_string_last('testing', 'array', 'methods', 'whoop',)).to eq(['testing', 'whoop', 'methods', 'array']) 
		end
	end

	context 'summing arrays' do
		it 'should sum an array using inject' do 
			expect(test.inject_sum(1, 2, 3, 4)).to eq(10)
		end
	end

	context 'selecting elements of arrays' do 

		it 'should return the value of a positive index' do 
			expect(test.return_index_or_default([1,2,3,4], 2, 'b')).to eq(3)
		end 

		it 'should return the value of a negative index' do 
			expect(test.return_index_or_default([1,2,3,4], -1, 'b')).to eq(4)
		end 

		it 'should return the value of a positive index using .fetch' do 
			expect(test.better_return_index_or_default([1,2,3,4], 3, 'b')).to eq(4)
		end

		it 'should return the value of a negative index using .fetch' do 
			expect(test.better_return_index_or_default([1,2,3,4], -1, 'b')).to eq(4)
		end

		it 'should return a default value if index out of range (negaitve index)' do 
			expect(test.better_return_index_or_default([1,2,3,4], -5, 'b')).to eq('b')
		end

		it 'should return a default value if index out of range (positive index)' do 
			expect(test.better_return_index_or_default([1,2,3,4], 4, 'b')).to eq('b')
		end
	end

			
end 