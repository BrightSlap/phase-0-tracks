class TodoList
	
	def initialize(list)
		@list = list
	end
	
	def get_items
		@list
	end

	def add_item(item)
		@add_item = item
		@list << @add_item
	end

	def delete_item(item)
		@delete_item = item
		@list.delete(@delete_item)
	end

	def get_item(number)
		@number = number.to_i
		@list[@number]
	end
end
