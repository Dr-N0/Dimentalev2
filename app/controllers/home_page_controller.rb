class HomePageController < ApplicationController


# $FIGHT = THE RUN BUTTON!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	$story = ["Welcome to Dimentale", "I am your consciousness, I'll be leading you through your adventure, there will be joy and sadness but most of all you will learn to beat the crap out of people who stand in your way", "with WORDS and THE POWER OF FISTICUFFS", "Oh look at that, a piece of paper with conveniently perfect print and in great condition it has the rules for the game that your in you should read it in interest of not dying or slowing the pace of the game", "Some period of time later", " You are 14 years of age", " You are rebellious and hate your parents even though deep down inside you know you love them", " You go into your room after a heated fight about the constitutional rights of a strip of bacon when you see a robot sitting on YOUR chair in YOUR room so you decide to ask it to leave when it says", "Robot: What is your name?", "  ", " ", " ", "Robot: This next question will determine if you live or die, the fate of my life and almost certainly yours can be saved if you answer this question", "Robot: please can you tell me", "Robot: Which do you like, 1)dogs or 2)cats", "    ", "After that the robot disappears and you don't rly know what happened", "After the questioning of the mysterious robot that left after the final question you continue your day as if nothing happened", "2 years pass something inside calls for you. You don't know what but after those hard disgusting and gross years you decide to leave your home town", "You leave home, your loving mother, and all of your friends behind. you look back and", "One flip them the finger", "or Two flip them the finger", " ", "They respond with we love you too and you feel like a piece of crap BUT you embark on your journey", "Before you can leave your grandma blocks the way you decide to engage in fisticuffs", "WHEN SOMEONE BLOCKS YOUR PATH OR OBJECTIVE YOU AUTOMATICLY DECIDE TO FIGHT THEM", "       ", "Grandma: So I hear you like ", "      ", "Grandma: Oh whats this?", "Grandma: you have some directions for some sort of game", "Ill take that off you", "After your encounter with Grandma you start walking away from your house", "After a few minutes of boring walking you come across a slip of paper", "Do you take the paper?", "When you got to the labratory there were two doors Indifferent lab door 1 and Ecstatic lab door 2", "          ",  "When you get into the room through either of the doors the scientists notice you and shake your hand", "They turn yours and the other 3 subjects attention to a masive square against", "It lights up blue", "As you are pushed forward to the portal you think", "Why am I so awesome?", "When you get to the portal you take the final steps to the new age you will be apart of", "The age of dementions", "As you touch the portal you feel a tingle, it starts to go to your head, neck and shoulders", "As it spreads throughout your body your eyelids drop and you pass out and vanish", "*boop*", "INTRO.................COMPLETED", "The portal takes you to a graveyard, there is a weird man at the gate", "You decide to confront him because nothing in the graveyard gives you confort", "When you get to the gate the man just stares at you", "BUT right as you were about to speak he coughs", "You try and speak but yet again, a cough, a cough, a cough, a cough, a cough, a cough, a cough, a cough, a cough, a cough", "The man passes out and with his dying breath says give me the paper that you used to find the labore'atory", "Give me paper", "            "]
	$memory = $story[0]
	$inventory = []
	$inv_links = []
	$yhealth = 10
	$ehealth = 1
	$boss = ""
	$name = ""
	$qmessage = ""
	$qanswer = ""
	$qcat = ""
	$qdog = ""
	$adog = ""
	$acat = ""
	$fingerq = ""
	$fingerqq = ""
	$paperq = false
	$fight = false
	$labdoorq = ""
	def index


	end

	def next

	$story.shift
		$memory = $story[0]

		if $memory == "Robot: This next question will determine if you live or die, the fate of my life and almost certainly yours can be saved if you answer this question"
			$qmessage = ""
			$qanswer = ""
		end
		if $memory == "After that the robot disappears and you don't rly know what happened"
			$qcat = ""
			$qdog = ""
		end
		if $memory == "      "
			$fight = false
		end
		if $memory == "       "
			$fight = true
		end
		if $memory == "Oh look at that, a piece of paper with conveniently perfect print and in great condition it has the rules for the game that your in you should read it in interest of not dying or slowing the pace of the game"
			$inv_links.push({:title => "YOUR VERY HELPFUL RULES",:url => "/home_page/1?id=1"})
		end
		if $memory == "Do you take the paper?"
			puts "im here to be nothing"
		end
		if $memory == "They respond with we love you too and you feel like a piece of crap BUT you embark on your journey"
			$fingerq = ""
			$fingerqq = ""
		end
		if $memory == "Robot: This next question will determine if you live or die"
			$qanswer = ""
		end
		if $memory == "Ill take that off you"
			$inv_links.shift
		end
		if $story == []
			redirect_to ({ action: 're' })
		else
			redirect_to root_path
		end
	end
	def enter
		if params[:empty_empty] == "Beckett"
			$boss = "valid"
		 elsif params != "Beckett"
		 	$boss = "invalid"
			$name = params[:empty_empty]
		end
		redirect_to({ action: 'next' })
	end
def re
	$story = ["Welcome to Dimentale", "I am your consciousness, I'll be leading you through your adventure, there will be joy and sadness but most of all you will learn to beat the crap out of people who stand in your way", "with WORDS and THE POWER OF FISTICUFFS", "Oh look at that, a piece of paper with conveniently perfect print and in great condition it has the rules for the game that your in you should read it in interest of not dying or slowing the pace of the game", "Some period of time later", " You are 14 years of age", " You are rebellious and hate your parents even though deep down inside you know you love them", " You go into your room after a heated fight about the constitutional rights of a strip of bacon when you see a robot sitting on YOUR chair in YOUR room so you decide to ask it to leave when it says", "Robot: What is your name?", "  ", " ", " ", "Robot: This next question will determine if you live or die, the fate of my life and almost certainly yours can be saved if you answer this question", "Robot: please can you tell me", "Robot: Which do you like, 1)dogs or 2)cats", "    ", "After that the robot disappears and you don't rly know what happened", "After the questioning of the mysterious robot that left after the final question you continue your day as if nothing happened", "2 years pass something inside calls for you. You don't know what but after those hard disgusting and gross years you decide to leave your home town", "You leave home, your loving mother, and all of your friends behind. you look back and", "One flip them the finger", "or Two flip them the finger", " ", "They respond with we love you too and you feel like a piece of crap BUT you embark on your journey", "Before you can leave your grandma blocks the way you decide to engage in fisticuffs", "WHEN SOMEONE BLOCKS YOUR PATH OR OBJECTIVE YOU AUTOMATICLY DECIDE TO FIGHT THEM", "       ", "Grandma: So I hear you like ", "      ", "Grandma: Oh whats this?", "Grandma: you have some directions for some sort of game", "Ill take that off you", "After your encounter with Grandma you start walking away from your house", "After a few minutes of boring walking you come across a slip of paper", "Do you take the paper?", "When you got to the labratory there were two doors Indifferent lab door 1 and Ecstatic lab door 2", "          ",  "When you get into the room through either of the doors the scientists notice you and shake your hand", "They turn yours and the other 3 subjects attention to a masive square against", "It lights up blue", "As you are pushed forward to the portal you think", "Why am I so awesome?", "When you get to the portal you take the final steps to the new age you will be apart of", "The age of dementions", "As you touch the portal you feel a tingle, it starts to go to your head, neck and shoulders", "As it spreads throughout your body your eyelids drop and you pass out and vanish", "*boop*", "INTRO.................COMPLETED", "The portal takes you to a graveyard, there is a weird man at the gate", "You decide to confront him because nothing in the graveyard gives you confort", "When you get to the gate the man just stares at you", "BUT right as you were about to speak he coughs", "You try and speak but yet again, a cough, a cough, a cough, a cough, a cough, a cough, a cough, a cough, a cough, a cough", "The man passes out and with his dying breath says give me the paper that you used to find the labore'atory", "Give me paper", "            "]
	$memory = $story[0]
	$inventory = []
	$inv_links = []
	$yhealth = 10
	$ehealth = 1
	$boss = ""
	$name = ""
	$qmessage = ""
	$qanswer = ""
	$qcat = ""
	$qdog = ""
	$adog = ""
	$acat = ""
	$fingerq = ""
	$fingerqq = ""
	$fight = false
	$paperq = false
	$labdoorq = ""
	redirect_to root_path
end

def yes
	if $memory == "Do you take the paper?"
		$paperq = true
		$inv_links.push({:title => "Happy paper?",:url => "/home_page/2?id=2"})
	elsif $memory == "Give me paper"
		$agraveyard = "Thank you, here in return *cough* take this *cough* *cough*"
		$inv_links.shift
		$inv_links.push({:title => "Mysterious Gem",:url => "/home_page/gem"})
	else
		$qmessage = "Robot: What do you want it to be?"
		$boss = ""
	end
	redirect_to({ action: 'next'})
end

def no
	if $memory == "Do you take the paper?"
		$paperq = false
	 	flash[:paperno] = "You dropped the poor, sad, depressed little paper it says to go to a labratory located behind an alleyway and to continue its legacy"
	elsif $memory == "Give me paper"
		$agraveyard = "WHY I NEED PAPER TO LIVE *dies* ... ... ...bleh"
	else
		$qmessage = "Robot: What do you want it to be?"
		$boss = ""
	end
	redirect_to({ action: 'next'})
end

def question
	redirect_to({ action: 'answer'})
end
def answer
	if params[:no_yes]
		$qmessage = "Robot: Ok then, #{params[:no_yes]} it is"
		$qanswer = "Robot: Ok then, #{params[:no_yes]} it is"
	end
	redirect_to({ action: 'next'})
end

def one
	if $memory == "Robot: Which do you like, 1)dogs or 2)cats"
		$adog = "Dogs"
	end
	if $memory == "or Two flip them the finger"
		$fingerqq = "How rude!"
	end
	if $memory == "When you got to the labratory there were two doors Indifferent lab door 1 and Ecstatic lab door 2"
		$labdoorq = "You go through the Indifferent door, nothing wants to happen"
	end
	redirect_to ({ action: 'next'})
	
end
def two
	if $memory == "Robot: Which do you like, 1)dogs or 2)cats"
		$acat = "Cats"
	end
	if $memory == "or Two flip them the finger"
		$fingerq = "Ok"
	end
	if $memory == "When you got to the labratory there were two doors Indifferent lab door 1 and Ecstatic lab door 2"
		$labdoorq = "You go through the extatic door, it was so extatic that you got slaped with happyness"
		$yhealth = 9
	end
	redirect_to ({ action: 'next'})
end
def run
	if $fight == true
		flash[:grun] = "You can't run from grandma, who do you think you are?"
		flash[:grun1] = "GRANDPA?"
	end
	redirect_to :back
end
def rules
	flash[:rules] = "1)NO SMOKING"
	flash[:rules1] = "2)NO FUN"
	flash[:rules2] = "3)If your HP (health points) go to 0 you LOSE, try to make everyone happy or you going to have a bad time"
	flash[:rules3] = "4)YOU CANT GO FURTHER UNLESS YOU ARE SMART ENOUGH TO SOLVE THIS PROBLEM, DO NOT TRY AND GO FURTHER"
	redirect_to :back
end
def paper
	flash[:paper] = "Hello, whoever you are, this is your lucky day"
	flash[:paper1] = "YOU have been selected from millons of other beings to take part in our experement"
	flash[:paper2] = "THIS experement that we speak of will transport you though dimentions"
	flash[:paper3] = "You have been chosen because you have a very low pain tolerance"
	flash[:paper4] = "This dimention experement was ment to be a better advil"
	flash[:paper5] = "If you are interested come to the alleyway behind the next stop sign on route 1050+72/2244"
	redirect_to :back
end

def gem
	puts "IT WORKED"
end

# "Then it hit you"
# "A paper in the wind slaps your face that reads"
# "Experement that needs test subjects that are willing to go to another dimention"
# "On the back it says 'ps: This was origanaly a more powerful advil'"
# "Do you keep the paper?"
# "Yes or No"
#  "---------------------------------------------------------------------------------"
#  @paperq = gets.chomp
#  while @paperq.empty? 
# 	 "You need an answer"
#  	@paperq = gets.chomp
#  end
#  if @paperq == "yes" or @paperq == "Yes" 
#  	invadd("paper")

#  elsif @paperq == "no" or @paperq == "No"
# 	"You dropped the poor, sad, depressed little paper"
#  else
# 	"You were overcome with thought"
# 	"You said NO BAD PAPER"
# 	"You dropped the poor, sad, depressed little paper"
#  end
#  "When you got to the labratory there were two doors 1. Indifferent lab door 1 and 2. Ecstatic lab door 2"
# "1 or 2"
#  "---------------------------------------------------------------------------------"
#  @labdoorq = gets.chomp
#  while @labdoorq.empty? 
# 	 "You need an answer"
#  	@labdoorq = gets.chomp
#  end
#  if @labdoorq == "1"
# 	 "You go through the door"
# 	"NOTHING HAPPENS"
# elsif @labdoorq == "2"
# 	 "You go though the door"
# 	"You suddenly feel worse?"
# else
# 	 "Are 1 AND 2 HARD FOR YOU 2 UNDERSTAND?"
# 	"You go through door 1"
# 	"Nothing wants to happen"
# end
# 	 "When you get into the room through either of the doors the scientists notice you and shake your hand"
# 	"They turn yours and the other 3 subjects attention to a masive square against"
# 	"It lights up blue"
# 	"As you are pushed forward to the portal you think"
# 	"Why am I so awesome?"
# 	"When you get to the portal you take the final steps to the new age you will be apart of"
# 	"The age of dementions"
# 	end
end
