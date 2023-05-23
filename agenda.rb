agenda = {
  Ramon: '887788778',
  Spotlio: '112233445',
  Techlead: '123456789',
  Skitude: '987654321'
}

while true
  puts ""
  puts "1 - Add contact"
  puts "2 - update contact"
  puts "3 - Show all contact"
  puts "4 - Delete contact"

  print "Choose one of the following options "
  choose = gets.chomp
  puts ""

  case choose
  when '1'
    print "Please, insert the contact name:"
    nome = gets.chomp
    if agenda[nome.to_sym].nil?
      print "Please, insert the phone number: "
      phone_number = gets.chomp
      agenda[nome.to_sym] = phone_number.to_i
      puts "#you have added #{nome} with the phone number #{phone_number}."
    else
      puts "the contact already exists in your agenda"
    end
  when '2'
    puts "What contact would you like to update?"
    nome = gets.chomp
    if agenda[nome.to_sym].nil?
      puts "that contact is not on your agenda"
    else
      puts "What is the new phone number?"
      phone_number = gets.chomp
      agenda[nome.to_sym] = phone_number.to_i
      puts "the contact #{nome}'s phone number has been updated, the new phone number is #{phone_number}."
    end
  when '3'
    agenda.each do |nome, phone_number|
      puts "Contact name: #{nome} - Contact phone number: #{phone_number}"
    end
  when '4'
    puts "Which contact would you like to delete?"
    nome = gets.chomp
    if agenda[nome.to_sym].nil?
      puts "The contact you are trying to delete doesnt exists"
    else
      agenda.delete(nome.to_sym)
      puts "#{nome} has been deleted"
    end
  else
    puts "Non valid option"
  end

end
