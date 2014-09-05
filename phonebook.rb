require 'fileutils'
require 'tempfile'

	def create_phonebook(phonebook_name)
		new_file = File.new( "#{phonebook_name}", 'a')
		puts "Created phonebook #{phonebook_name} in the current directory."
	end

	def add_entry(name, number, phonebook_name)
		File.open( phonebook_name, "a") { |file| file.puts name + " " + number}
		puts "Added an entry to #{phonebook_name}"
		puts name + " " + number

		# error if no phonebook
		# puts "Phonebook does not exist"
	end

	def lookup(name, phonebook_name)
		File.open( phonebook_name, "a+") do |file| 
			file.any? do |line|
				if line.include?(name)
					puts line
				end
			end
		end
		#error
		# puts "That name does not exist"
	end


	def remove(name, phonebook_name)
		tmp = Tempfile.new("extract")
		open(phonebook_name, 'r').each {|line| tmp << line unless line.include?(name)}
		tmp.close
		FileUtils.mv(tmp.path, phonebook_name)
		#error
		# puts "That name does not exist"
	end


	command = ARGV[0]
	case command
		when "create"
			create_phonebook(ARGV[1])
		when "add"
			add_entry(ARGV[1], ARGV[2], ARGV[3])
		when "lookup"
			lookup(ARGV[1], ARGV[2])
		when "change"
			remove(ARGV[1], ARGV[3])
			add_entry(ARGV[1], ARGV[2], ARGV[3])
		when "remove"
			remove(ARGV[1], ARGV[2])
		when "reverse-lookup"
			lookup(ARGV[1], ARGV[2])
		else 
			puts "That's not a valid command"
	end

