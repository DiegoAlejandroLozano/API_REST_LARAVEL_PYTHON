<?php

$factory->define(App\Student::class, function (Faker\Generator $faker) {

	$clase = array( 
					'6-1', '6-2', '6-3', '6-4', '6-5',
					'7-1', '7-2', '7-3', '7-4', '7-5', 
					'8-1', '8-2', '8-3', '8-4', '8-5',
					'9-1', '9-2', '9-3', '9-4', '9-5',
					'10-1', '10-2', '10-3', '10-4', '10-5',
					'11-1', '11-2', '11-3', '11-4', '11-5', 
			);

    return [
        'nombre' 			=> $faker->firstName(),
        'apellido' 			=> $faker->lastName,
        'clase' 			=> $faker->randomElement($array = $clase ),
        'edad' 				=> $faker->numberBetween($min = 10, $max = 16),
        'descripcion'		=> $faker->text(), 
    ];
});