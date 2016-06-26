mall = {
	Macys: [
		'Clothes',
		'Cookware',
		'Perfume'
		],
	Food_Court: { 
		Taco_Bell:[
			'Tacos', 'Quesidillas'],
		Sbarro:[
			'Pizza', 'Pasta'],
		Sarku_Japan:[
			'Beef Teriyaki', 'Chicken Teriyaki', 'Shrimp Teriyaki', 'Combo']
	},
	RadioShack: [
		'RC Toys',
		'Sound System',
		'Batteries'
		]
}

p mall
p mall[:Food_Court].keys
p mall[:Macys][1]
p mall.fetch("RadioShack") {|store| "Let's go to #{store}"}
p mall[:RadioShack]
