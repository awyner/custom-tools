* trim all leading characters - ":%s /.\\ {num characters to trim}"
	* ctrl + g -> get column number of cursor
* gJ -> join lines together without space(remove new line)
	* J -> join lines with space at join
* cat FILE | cut -d ":" -f 1
	* cat FILE and cut printing at given field
		* d - delimeter
		* f - fields list
* :g/^\s*$/d
	* remove empty lines
* :%s/.\{1}$//
	* delete one character from end of each line
* while read IN;do echo "http://$IN" >> snapback.txt; done < http_80.txt
	* while read VARIABLE_NAME; do TASK; done < FILE_TO_READ