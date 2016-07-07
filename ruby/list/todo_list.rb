class TodoList
	attr_accessor :list_array

	def initialize(item1, item2)
		@item1 = item1
		@item2 = item2
	end

	def get_items
		@list
	end
end

list_one = TodoList.new("walk the dog", "mow the lawn")
p list_one