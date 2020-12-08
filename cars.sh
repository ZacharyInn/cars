#! /bin/bash
# cars.sh
# Zachary Inn

echo "Please choose one of the following: ";
while read choice
do
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to quit and exit the program"
	case "$choice" in
		1)
			echo "What year is the model of the car?"
			read year
			echo "What is the make of the car?"
			read make
			echo "What is the model of the car?"
			read model
			a=":"
			combine="$year$a$make$a$model"
			echo -e "\n$combine" >> My_old_cars
			;;
		2)
			echo "List of cars: "
			sort My_old_cars
			echo "End of list"
			;;
		3)
			break
			;;
	esac
	echo "Good-bye"
done
