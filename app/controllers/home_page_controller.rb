class HomePageController < ApplicationController

	$story = ["Welcome to Dimentale", "I am your consciousness, I'll be leading you through your adventure, there will be joy and sadness but most of all you will learn to beat the crap out of people who stand in your way", "with WORDS", "BUT before we do that rules must be presented to you", "If your Health points or (hp) reaches 0 you die and restart", "If at any time you want to quit this awesome game LEAVE I don't want you anyway ", "Australian narrator: Ok just to be clear I was payed for the intro because $50 a word was waaaayyyy tooo muuuch for a newbie like my boss but I'm nice so I lowered it to $49 and a deal was set", "Australian narrator: so here I am doing this stupid voice over", "Some period of time later", "Australian narrator: Ok, lets get into your game", "Australian narrator: You are 14 years of age", "Australian narrator: You are rebellious and hate your parents even though deep down inside you know you love them", "Australian narrator: You go into your room after a heated fight about the constitutional rights of a strip of bacon when you see a robot sitting on YOUR chair in YOUR room so you decide to ask it to leave when it says", "Robot: What is your name?", "  ", " ", " ", "Robot: This next question will determine if you live or die, the fate of my life and almost certainly yours can be saved if you answer this question", "Robot: please can you tell me", "Robot: Which do you prefer, dogs or cats", "    ", "After that the robot disappears and you don't rly know what happened", "Just sober Australian narrator: After the questioning of the mysterious robot that left after the final question you continue your day as if nothing happened just like me last night", "Just sober Australian narrator: 2 years pass and I am completely done with drinking something inside calls for you. You don't know what but after those hard disgusting and gross years you decide to leave your home town", "Sober Australian narrator: You leave home, your loving mother, and all of your friends behind. you look back and", "One flip them the finger", "or Two flip them the finger", " ", "They respond with we love you too and you feel like a piece of crap BUT you embark on your journey", "Before you can leave your grandma blocks the way you decide to engage in fisticuffs", "WHEN SOMEONE BLOCKS YOUR PATH OR OBJECTIVE YOU AUTOMATICLY DECIDE TO FIGHT THEM", "       ", "Grandma: So I hear you like", "      "]
	$memory = $story[0]
	$inventory = ""
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
	def index


	end

	def next

	$story.shift
		if $story == []
			$story = ["Welcome to Dimentale", "I am your consciousness, I'll be leading you through your adventure, there will be joy and sadness but most of all you will learn to beat the crap out of people who stand in your way", "with WORDS", "BUT before we do that rules must be presented to you", "If your Health points or (hp) reaches 0 you die and restart", "If at any time you want to quit this awesome game LEAVE I don't want you anyway ", "Australian narrator: Ok just to be clear I was payed for the intro because $50 a word was waaaayyyy tooo muuuch for a newbie like my boss but I'm nice so I lowered it to $49 and a deal was set", "Australian narrator: so here I am doing this stupid voice over", "Some period of time later", "Australian narrator: Ok, lets get into your game", "Australian narrator: You are 14 years of age", "Australian narrator: You are rebellious and hate your parents even though deep down inside you know you love them", "Australian narrator: You go into your room after a heated fight about the constitutional rights of a strip of bacon when you see a robot sitting on YOUR chair in YOUR room so you decide to ask it to leave when it says", "Robot: What is your name?", "  ", " ", " ", "Robot: This next question will determine if you live or die, the fate of my life and almost certainly yours can be saved if you answer this question", "Robot: please can you tell me", "Robot: Which do you prefer, dogs or cats", "    ", "After that the robot disappears and you don't rly know what happened", "Just sober Australian narrator: After the questioning of the mysterious robot that left after the final question you continue your day as if nothing happened just like me last night", "Just sober Australian narrator: 2 years pass and I am completely done with drinking something inside calls for you. You don't know what but after those hard disgusting and gross years you decide to leave your home town", "Sober Australian narrator: You leave home, your loving mother, and all of your friends behind. you look back and", "One qflip them the finger", "or Two flip them the finger", " ", "They respond with we love you too and you feel like a piece of crap BUT you embark on your journey", "Before you can leave your grandma blocks the way you decide to engage in fisticuffs", "WHEN SOMEONE BLOCKS YOUR PATH OR OBJECTIVE YOU AUTOMATICLY DECIDE TO FIGHT THEM", "       ", "Grandma: So I hear you like ", "      "]
		end
		$memory = $story[0]

		if $memory == "After that the robot disappears and you don't rly know what happened"
			$qcat = ""
			$qdog = ""
		end

		if $memory == "They respond with we love you too and you feel like a piece of crap BUT you embark on your journey"
			$fingerq = ""
			$fingerqq = ""
		end
		if $memory == "Robot: This next question will determine if you live or die"
			$qanswer = ""
		end
		redirect_to root_path
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
	$story = ["Welcome to Dimentale", "I am your consciousness, I'll be leading you through your adventure, there will be joy and sadness but most of all you will learn to beat the crap out of people who stand in your way", "with WORDS", "BUT before we do that rules must be presented to you", "If your Health points or (hp) reaches 0 you die and restart", "If at any time you want to quit this awesome game LEAVE I don't want you anyway ", "Australian narrator: Ok just to be clear I was payed for the intro because $50 a word was waaaayyyy tooo muuuch for a newbie like my boss but I'm nice so I lowered it to $49 and a deal was set", "Australian narrator: so here I am doing this stupid voice over", "Some period of time later", "Australian narrator: Ok, lets get into your game", "Australian narrator: You are 14 years of age", "Australian narrator: You are rebellious and hate your parents even though deep down inside you know you love them", "Australian narrator: You go into your room after a heated fight about the constitutional rights of a strip of bacon when you see a robot sitting on YOUR chair in YOUR room so you decide to ask it to leave when it says", "Robot: What is your name?", "  ", " ", " ", "Robot: This next question will determine if you live or die", "The fate of my life and almost certainly yours can be saved if you answer this question", "Robot: please can you tell me", "Robot: Which do you prefer, dogs or cats", "    ", "After that the robot disappears and you don't rly know what happened", "Just sober Australian narrator: After the questioning of the mysterious robot that left after the final question you continue your day as if nothing happened just like me last night", "Just sober Australian narrator: 2 years pass and I am completely done with drinking something inside calls for you. You don't know what but after those hard disgusting and gross years you decide to leave your home town", "Sober Australian narrator: You leave home, your loving mother, and all of your friends behind. you look back and", "One flip them the finger", "or Two flip them the finger", " ", "They respond with we love you too and you feel like a piece of crap BUT you embark on your journey", "Before you can leave your grandma blocks the way you decide to engage in fisticuffs", "WHEN SOMEONE BLOCKS YOUR PATH OR OBJECTIVE YOU AUTOMATICLY DECIDE TO FIGHT THEM", "       ", "Grandma: So I hear you like", "      "]
	$memory = $story[0]
	$inventory = ""
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
	redirect_to root_path
end

def yes
	$qmessage = "Robot: What do you want it to be?"
	$boss = ""
	redirect_to({ action: 'next'})
end

def no
	$qmessage = "Robot: What do you want it to be?"
	$boss = ""
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
	$adog = "Dogs"
	if $memory == "or Two flip them the finger"
		$fingerqq = "How rude!"
	end
	redirect_to ({ action: 'next'})
	
end
def two
	$acat = "Cats"
	if $memory == "or Two flip them the finger"
		$fingerq = "Ok"
	end
	redirect_to ({ action: 'next'})
end
# def ok input
# @next = gets.chomp
# 	if @next.upcase == "QUIT"
# 		abort"See ya")	
# 	elsif @next.upcase == "INV"
# 		 "#@inventory"
# 	elsif @next != "QUIT"
# 		 input
# 	end
# end



# def damage input
# 	@yhealth -= input
# 	while @yhealth == 0
# 		abort("Game over")
# 	end
# end

# def edamage input
# 	@ehealth -= input
# 	if @ehealth <= 0
# 		 "#@ename is defeated"
# 	end
# end
# def invadd input
# 	@inventory.push (input)
	
# end
# def invdrop input

# 	@inventory.delete (input)
# end


#  @name = gets.chomp
#  while @name.empty? 
# 	 "You need an answer"
#  	@name = gets.chomp 
#  end
#  if @name != "Beckett"
# 	 "Robot: Nice to meet you @name"
# 	"Robot: My name is Greg"
# 	"Robot: I don't like my name very much; would you like to keep the name Greg?"
#  else @name == "Beckett"
# 	 "Robot: Password accepted dabaws is here"
# 	"Robot: My name is Greg"
# 	"Robot: I don't like my name very much, yes or no? would you like to keep the name Greg?"
#  end

#  "---------------------------------------------------------------------------------"
#  @fname = gets.chomp
#  while @fname.empty? 
# 	 "You need an answer"
#  	@fname = gets.chomp
#  end
#  if @fname == "yes" or @fname == "Yes" or @fname == "no" or @fname == "No"
# 	 "Robot: I'm so glad that you wanted to change my name!"
# 	"Robot: Can you enter it please?"

#  elsif 
# 	 "Robot: Thats not really an answer to a yes or no question but ill assume no please enter my name here"
#  end
#  "---------------------------------------------------------------------------------"
#  @fname1 = gets.chomp
#  while @fname1.empty? 
# 	 "You need an answer"
#  	@fname1 = gets.chomp
#  end
#  while @fname1 == "@name"
# 	 "Robot: Nope!"
#  	@fname1 = gets

#  end
#  	if @fname1 != "@name"
# 		 "Robot: Ok then, @fname1 it is"
#  	 end 
# "Robot: This next question will determine if you live or die, 
# the fate of my life and almost certainly yours can be saved if you answer this question" 
#  "Robot: please can you tell me"
# "Robot: Which do you prefer, dogs or cats"
#  "---------------------------------------------------------------------------------"
#  @bigq = gets.chomp
#  while @bigq.empty? 
# 	 "You need an answer"
#  	@bigq = gets.chomp
#  end
#  if @bigq == "dogs" or @bigq == "Dogs" or @bigq == "cats" or @bigq == "Cats"
# 	 "Robot: Ok then"
#  elsif 
# 	 "Robot: I see"
#  end	
#  if @bigq == "dog" 
#  	@bigq = "dogs"
#  end
#  if @bigq == "Dog"
#  	@bigq = "Dogs"
#  end
#  if @bigq == "Cat"
#  	@bigq = "Cats"
#  end	
#  if @bigq == "cat"
#  	@bigq = "cats"
#  end
# "Just sober Australian narrator: After the questioning of the mysterious robot that left after the final question you continue your day as if nothing happened just like me last night"
# "Just sober Australian narrator: 2 years pass and I am completely done with drinking something inside calls for you. You don't know what but after those hard disgusting and gross years you decide to leave your home town"
# "Sober Australian narrator: You leave home, your loving mother, and all of your friends behind. you look back and"
# "One flip them the finger"
# "or Two flip them the finger"
#  "---------------------------------------------------------------------------------"
#  @finger = gets.chomp
#  while @finger.empty? 
# 	 "You need an answer"
#  	@finger = gets.chomp
#  end
#  if @finger == "1" or @finger == "2"
# 	 "Realy???"
#  else 
# 	 "If thats what you think"
#  end
# "They respond with we love you too and you feel like a piece of crap BUT you embark on your journey"

#  @ehealth = 1
#  @ename = "Grandma"

# "Before you can leave your grandma blocks the way you decide to engage in fisticuffs"
# "WHEN SOMEONE BLOCKS YOUR PATH OR OBJECTIVE YOU AUTOMATICLY DECIDE TO FIGHT THEM"
#  "                          Your loving Grandma"
#  ""
#  ""
#  "Grandma HP - 1 	@name HP - 10"
#  ""
#  ""
#  ""
#  ""
#  ""
#  ""
#  ""
#  "Grandma: So i hear you like @bigq"
#  if @bigq == "dogs" or @bigq == "Dogs"
#  	@ehealth = 30 
#  	@yhealth = 10
# 	 "Grandma HP - 30"
# 	"Grandma gets mad but she calms down and allows you to pass"
# 	"You punch grandma and run away because she didn't let you pass"
#  elsif @bigq == "Cats" or @bigq == "cats"
# 	 "You are free to go!"
#  end
# "You finally made it out of your house"
# "Which way do you want to go?"
# "Right? or Left?"
#  "---------------------------------------------------------------------------------"
#  @direction = gets.chomp
#  while @direction.empty? 
# 	 "You need an answer"
#  	@direction = gets.chomp
#  end
#  if @direction == "Right" or @direction == "right"
# 	 "You decide to go RIGHT into a bully"
#  elsif @direction == "Left" or @direction == "left"
# 	 "You decide to go left but all thats LEFT was a bully"
#  else
# 	 "You decide to go RIGHT into a bully"
#  end
#  @ehealth = 11
#  @yhealth = 10
#  @ename = "Charles"

#  "                    CAP.tain Charles THE BULLYcaps (4 short)"
#  ""
#  ""
#  "Bully HP - 11 	Your HP - 10"
#  ""
#  ""
#  ""
#  ""
#  ""
#  ""
#  ""
# "Charles: I'm a nice bully so I will give you two choices"
# "PUNCH"
# "OR"
# "punch"
#  "---------------------------------------------------------------------------------"
#  @punch = gets.chomp
#  while @punch.empty? 
# 	 "You need an answer"
#  	@punch = gets.chomp
#  end
#  if @punch == "PUNCH"
#  	damage(5)
# 	 "It hurt your SOUL"
#  	"Your HP - @yhealth"
#  elsif @punch == "punch"
#  	damage(1)
# 	 "It wasn't BAD"
#  	"Your HP - @yhealth"
#  else
# 	 "Charles: A PUNCH it is"
#  	damage(5)
# 	 "It hurt your SOUL"
#  	"Your HP - @yhealth"
#  end
# "You get a feeling of DETERMINATION"
# "You respond with either"
#  "1. A punch 2. Run"
#  "Answer 1 or 2"
#  "---------------------------------------------------------------------------------"
#  @returnpunch = gets.chomp
#  while @returnpunch.empty? 
# 	 "You need an answer"
#  	@returnpunch = gets.chomp
#  end
#  if @returnpunch == "1"
#  	"Charles returns with a PUNCH and you feel it TOO MUCH"
#  	damage5)
#  	"Your HP - @yhealth"
#  elsif @returnpunch == "2"
# 	 "You run away like a bitch"
#  else
# 	 "Your brain is confused by what you want to do it chose one"
#  	@returnpunch == "1"
#  end
#  if @returnpunch == "1" and @yhealth != 0
# 	 "You run away from the bully"
#  end

# "After your kurfuffle with charles you decide to find a companion because you have no friends"
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
#  "When you got to the labratory there were two doors 1. Indifrent lab door 1 and 2. Extatic lab door 2"
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
