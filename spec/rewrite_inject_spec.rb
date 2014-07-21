require 'rewrite_inject'

describe Array do  
	context 'rewrite_inject' do
		it 'can sum a number without an initial value' do
			expect([1,2,3,4].rewrite_inject{ |mem, value| mem += value }).to eq 10
		end

		it 'can sum a number with an initial value' do
			expect([1,2,3,4].rewrite_inject(1){ |mem, value| mem += value }).to eq 11
		end

		it 'can multiply numbers' do
			expect([1,2,3,4].rewrite_inject(&:*)).to eq 24
		end

		it 'can multiple numbers with an initial value' do
			expect([1,2,3,4].rewrite_inject(5,&:*)).to eq 120
		end

		it "can subtract numbers" do
			expect([1,2,3,4].rewrite_inject(&:-)).to eq -8
		end

		it 'can subtract numbers with an initial value' do
			expect([1,2,3,4].rewrite_inject(9,&:-)).to eq -1
		end

		it 'can divide numbers' do
			expect([100,2,2].rewrite_inject(&:/)).to eq 25
		end

		it 'can divide numbers with an initial value' do
			expect([100,2,2].rewrite_inject(10000,&:/)).to eq 25
		end

		it 'can find the longest word in an array of strings' do
			words = %w{ cat sheep bear dog}
			expect(words.rewrite_inject{ |mem, word| mem.length > word.length ? mem : word }).to eq 'sheep'
		end
	
		# it 'can build a hash from 2 arrays'
  # 			integer_array = [1, 2, 3, 4]
  # 			str_array = [ 'cat' 'sheep' 'bear' 'dog']
  # 			hash = integer_array.rewrite_inject(str_array{}) do |mem, values|
  # 			mem[values.first] = values.last
		# 	mem
		# 	end
		# 	expect(hash).to eq({'1' => 'cat', '2' => 'sheep', '3' => 'bear', '4' => 'dog' })
  # 		end 

		it 'can convert a 2D Array into a Hash' do
			array = [['A', 'a'], ['B', 'b'], ['C', 'c']]
			hash = array.rewrite_inject({}) do |mem, values|
			  mem[values.first] = values.last
			  mem
			end
			expect(hash).to eq({'A' => 'a', 'B' => 'b', 'C' => 'c' })
		end
	end
end  

# let(:integer_array) 	{[1, 2, 3, 4].new}

	# context 'rewrite_inject' do

	# 	it 'should be able to sum a number without an initial value' do 
	# 		integer_array = [1, 2, 3, 4]
	# 		normal_inject = integer_array.inject {|x, y| x + y }
	# 		expect(normal_inject).to eq 10
	# 	end

	# 	it 'should be able to divide numbers of a given array' do 
	# 		integer_array = [1, 2, 3, 4]
	# 		normal_inject = integer_array.inject {|result, element| result / element }
	# 		expect(normal_inject).to eq 0
	# 	end

	# 	it 'should be able to minus a number without an initial value' do 
	# 		integer_array = [1, 2, 3, 4]
	# 		normal_inject = integer_array.inject {|x, y| x - y }
	# 		expect(normal_inject).to eq (-8).to_i
	# 	end

	# 	it 'should be able to multiple numbers of a given array' do 
	# 		integer_array = [1, 2, 3, 4]
	# 		normal_inject = integer_array.inject {|x, y| x * y }
	# 		expect(normal_inject).to eq 24
	# 	end


		# it 'should be able to find the longest word' do
		# 	str_array = [ 'cat' 'sheep' 'bear' 'dog']
		# 	normal_inject = str_array.inject {|mem, word| }
  # 			expect.to_receive(word.length > mem.length).and_return word
  # 			expect(normal_inject).to eq 'sheep'
  		# end 

#   		it 'can build a hash from 2 arrays'
#   			integer_array = [1, 2, 3, 4]
#   			str_array = [ 'cat' 'sheep' 'bear' 'dog']
#   			Hash.new { |integer_array[], str_array[]| integer[string] }
#   		end 

# 	end 
# end 
		
