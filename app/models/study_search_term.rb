class StudySearchTerm
	attr_reader :where_clause, :where_args, :order
	def initialize(search_term)
		search_term = search_term.downcase
		@where_clause = ""
		@where_args = {}
		build_for_study_name_search(search_term)
	end

	def build_for_study_name_search(search_term)
		@where_clause << case_insensitive_search(:study_name)
		@where_args[:study_name] = starts_with(search_term)

		@where_clause << " OR #{case_insensitive_search(:crc)}"
		@where_args [:crc] = starts_with(search_term)
		@order = "study_name asc"
	end

	def starts_with(search_term)
		search_term + "%"
	end

	def case_insensitive_search(field_name)
		"lower(#{field_name}) like :#{field_name}"
	end
end