ActiveAdmin.register Word do
  show title: proc {|x| x.word} do
    attributes_table do
      row :id
      row :word
      row :definition
      row :sentence
      row :created_at
      row :updated_at
    end
  end
  collection_action :find_or_create, method: :post do
    @new = []
    @old = []
    params[:words].split(/\s/).keep_if(&:present?).each do |word|
      instance = Word.where(word: word).first
      if instance.nil?
        @new << word
        Word.create!(word: word)
      else
        @old << word
      end
    end
  end
end
