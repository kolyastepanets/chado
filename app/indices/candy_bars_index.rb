ThinkingSphinx::Index.define :candy_bar, with: :active_record do
  indexes title, sortable: true
  indexes text
end
