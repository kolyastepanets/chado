ThinkingSphinx::Index.define :program, with: :active_record do
  indexes title, sortable: true
  indexes text
end
