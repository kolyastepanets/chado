ThinkingSphinx::Index.define :additional_service, with: :active_record do
  indexes title, sortable: true
  indexes text
end
