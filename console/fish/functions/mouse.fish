function mouse
	set paramNumber (count $argv)
	set command $argv[1]
	set value NULL
	
	if math "$paramNumber > 1"
		set value $argv[2]
	end
	
	if [ "$command = set" ]
		if [ "$value" ]
			echo "Setting mouse speed to $value"
			xinput set-prop 10 272 "$value"
		end
	else
		echo "Command $command could not be recognized"
	end
end
