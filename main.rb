=begin
Bonjour à tout le monde, voici mon démarrage dans le langage ruby !
=end
begin
	require "colorize"
	require "os"
	if OS.windows?
		system "cls"
	elsif OS.linux? || OS.mac?
		system "clear"
	end
	if ARGV.length == 2
		if ARGV[0] == "--help" || ARGV[0] == "-h" 
			puts "Besoin d'aide pour la commande \"#{ARGV[1]}\" ?\n".green
		elsif ARGV[0] == "--file" || ARGV[0] == "-f"
			if (ARGV[1].end_with?(".txt") || ARGV[1].end_with?(".rb") )&& File.exists?(ARGV[1])
				myFile =  File.open ARGV[1], "r"
				myFile.each_line do |line|
					unless line == "\n"
						puts "#{line}"
						sleep 0.0625
					end
				end
			else
				puts "Seul les fichiers texte ou ruby sont lisibles avec ce programme. \n".red
			end
		else
			puts "Commande inconnue !\n".red
		end
	else 
		puts "Pour utiliser ce programme, deux arguments sont requis ! \n".red 
	end
end