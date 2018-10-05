MENU = {
    "WELSH" => {
        "Lipides" => 38.4,
        "Glucides" => 18.3,
        "Protéines" => 36.3
     	},
    "FRITES" => {
        "Lipides" => 15,
        "Glucides" => 41,
        "Protéines" => 3.4
     	},
    "BIERE" => {
        "Lipides" => 0,
        "Glucides" => 25,
        "Protéines" => 4
     	},
    "PRIX" => {
       "WELSH" => { prix: 15 },
       "FRITES" => { prix: 4 },
       "BIERE" => { prix: 5 }
    	}
}


def weight_watchers(arr)
	calories = {
		"Lipides" => 9,
		"Glucides" => 4,
		"Protéines" => 4
	}

	i=0
	cal = []
	calories.each_value{|x| 
		cal[i] = x
		i += 1
	}

	j=0
	wel = []
	arr.each_value{|y| 
		wel[j] = y
		j += 1
	}

	caloris = 0
	for i in 0...(cal.length)
		caloris += cal[i]*wel[i].to_f
	end
	caloris.to_f.round
end


def meal_price(array)
	i = 0
	sum = 0
	arr = array.values[(array.length - 1)]
	arr1 = arr.values
	arr2 = []
	arr1.each{|x|
		arr2[i] = x.values
		i += 1
	}
	arr2.each{|s|
		sum += s[0].to_i
	}
	puts "price : #{sum}"
end


def meal_weight_watchers(menu)
	superc = 0
	superCal = []
	(menu.length - 1).times{|i|
		superCal[i] = weight_watchers(menu.values[i])
		puts "calories of #{menu.keys[i]}: #{superCal[i]}"
				}

	superCal.each{|j|
		superc += j
	}
	puts "calories fo menu: #{superc}"
end

meal_weight_watchers(MENU)

meal_price(MENU)