function nvm -d "Run nvm commands via fish using bass"
	# Attention! This requires bass to be installed: https://github.com/edc/bass
	# TODO Add check if bass is present and abort with a message if it is not
	bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
