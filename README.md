phonebook
=========

Command line tool to manage a phonebook written in Ruby to practice working with files

`ruby phonebook.rb create hsphonebook.txt`
Created phonebook hsphonebook.txt in the current directory

`ruby phonebook.rb lookup Sarah hsphonebook.txt`
Sarah Apple 509 123 4567
Sarah Orange 123 456 7890
Sarah Ahmed 432 123 4321
Sarah Ahmed 432 123 4321

'ruby phonebook.rb add 'John Michael' '123 456 4323' hsphonebook.txt'
Added an entry to hsphonebook.txt
John Michael 123 456 4323

`ruby phonebook.rb change 'John Michael' '234 521 2332' hsphonebook.txt`
Added an entry to hsphonebook.txt
John Michael 234 521 2332

`ruby phonebook.rb remove 'John Michael' hsphonebook.txt`
Removed John Michael from hsphonebook.txt
