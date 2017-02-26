ThinkingSphinx::Index.define :perfomance, with: :active_record do
  indexes title, sortable: true
  indexes text
end
