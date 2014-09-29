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
	end

end 