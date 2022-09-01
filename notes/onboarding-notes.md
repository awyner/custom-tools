### Setup
* thisisunsafe if you get insecure webpage error
* vim trim all leading characters - ":%s /.\\ {num characters to trim}"
	* ctrl + g -> get column number of cursor
* tmux
	* ctrl + b, d -> detach
	* tmux a -> attach
	* tmux a -t [session id] -> attach specific session if multiple sessions active
	* tmux kill-session -t [session id] -> kill session
	* ctrl + b, [number]
	* ctrl + b, & - kill current window
	* ctrl + b, c - create new window
	* ctrl + b, n - select next window
* APIPA -> 169.254.x.x, automatic private ip assignment, dhcp not working
* Identifying host names
	* ask client
	* reverse dns
	* forward dns (brute force)
	* host names on TLS certs
		* navigate to address via https, cr.sh, shodan.io
	* zone transfer
	* google dorking/backlinks
* nc -vv [ip] \[port] -> check if port is open with nc
* enter ~ . -> force exit ssh
* 