text= "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."

=begin
* créer un hash pour stocker les mots
*Obtenir un tableau des mots de notre texte (split())
*Itérer sur le tableau précedent
*Remplir le hash
*Afficher les information

**Organiser les mots pour sortir les mots les plus fréquents
=end
=begin
frequence = {}
mots = text.downcase.split(' ')
mots.each do |mot|
	if frequence[mot]
		frequence[mot] +=1
	else
		frequence[mot] = 1
end
end

puts frequence.inspect
=end
frequence = Hash.new(0)
mots = text.tr('.,":', '').downcase.split(' ')
mots.each do |mot|
	frequence[mot] += 1
end

frequence = frequence.sort_by { |mot, count| count }
frequence.reverse!
first = frequence.first

puts "Le mot qui apparait le plus souvent est le mot : \"#{first[0]}\" qui apparait \"#{first[1]}\" fois."

frequence.each do |mot|
	puts "le mot \"#{mot[0]}\" apparait #{mot[1]} fois."
end