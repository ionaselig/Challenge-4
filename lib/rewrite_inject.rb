class Array


	def rewrite_inject(initial = nil)
		mem = initial || self.slice!(0)
		self.each do |element|
			mem = yield mem, element
		end
		mem
	end
end

