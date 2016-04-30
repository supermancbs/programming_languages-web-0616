
def reformat_languages(languages)
  
	new_hash={}
	languages.each do |type, data|
			#binding.pry
		data.each do |language, language_data|
			language_data.each do |type2, description|
				#binding.pry
				if language== :javascript && new_hash.has_key?(:javascript)==false 
					new_hash[language] = {type2 => description, :style => [:oo, :functional]}
				elsif language != :javascript
					new_hash[language] = {type2 => description, :style => [type] }
				end 
			end 	
		end  
	end 
	
  new_hash
end
