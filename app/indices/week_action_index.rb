ThinkingSphinx::Index.define :week_action, with: :active_record do
  indexes title, sortable: true
  indexes text
end
