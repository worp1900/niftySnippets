
// Function called with userData javascript object
DbManager.prototype.testDbConnection = function(userData)
{
	var connection = this.connect();
	
	// In this handler, we want to use userData as it was passed to the parent function
	// So we create an event listener, accepting the userData parameter in its callback function
	// and executing it directly while also passing the userData in as a parameter (line 19).
	// The event listener then returns a function that has the userData available through the 
	// callback's parameters and can do anything with it.
	// The returned function is actually bound to the event.
	connection.once('open', function (userData) {
		
		return function()
		{
			console.log(userData);
		}
	}(userData));
};