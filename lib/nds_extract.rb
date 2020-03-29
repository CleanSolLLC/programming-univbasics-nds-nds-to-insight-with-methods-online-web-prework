require 'directors_database'

def directors_totals(nds)
  result = {}
  row = 0
  while row < nds.length
  	director_totals = gross_for_director(nds[row])
  	result[nds[row][:name]] = director_totals
  	row +=1
  end

  result
  
end


def gross_for_director(director_data)
  movie = 0
  director_gross = 0
   while movie < director_data[:movies].count
  	 director_gross += director_data[:movies][movie][:worldwide_gross]
  	 movie +=1
   end
   director_gross
end
