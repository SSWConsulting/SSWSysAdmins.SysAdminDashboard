New-UDPage -Name "Home" -Icon home -Content {
	New-UDParagraph -Text {
		Hi and welcome to the SSW Sys Admins monitoring portal.
		}
		New-UDCard -Title "Contents" -Text "Here you will find all sorts of information which our SysAdmins use on a daily basis for monitoring the health of our network." -Links @(New-UDLink -Url http://localhost:5060/About -Text "Read a little more about our SysAdmin team")
	 }    