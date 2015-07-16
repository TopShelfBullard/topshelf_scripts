def build_directory_structure_for(programming_language)
	system("mkdir /Users/mitchbullard/Dev/#{programming_language}")
	system("mkdir /Users/mitchbullard/Dev/#{programming_language}/github.com")
	system("mkdir /Users/mitchbullard/Dev/#{programming_language}/github.com/TopShelfBullard")
end

def clone_repos(programming_language, repos)
	repos.each do |name|
		system("git clone https://github.com/TopShelfBullard/#{name}.git /Users/mitchbullard/Dev/#{programming_language}/github.com/TopShelfBullard/#{name}")
	end
end

def build_directory_structure_and_clone_repos(programming_language, repos)
	build_directory_structure_for(programming_language)
	clone_repos(programming_language, repos)
end

system("mkdir /Users/mitchbullard/Dev")

build_directory_structure_and_clone_repos("go", ["go_colors", "GoBinaryTrees", "GoChessAI"])
build_directory_structure_and_clone_repos("ruby", ["summer_of_ruby_2015", "jeeves", "XML_helper", "summer_of_rails_2014"])
build_directory_structure_and_clone_repos("rails", ["data_caddy", "AgileClassProject", "nerdwords"])
build_directory_structure_and_clone_repos("javascript", ["word_game_assistant"])
build_directory_structure_and_clone_repos("elixir", ["Elixir-Playground"])

build_directory_structure_for("sonic_pi")
build_directory_structure_for("java")
build_directory_structure_for("cocoa")
build_directory_structure_for("sql")
