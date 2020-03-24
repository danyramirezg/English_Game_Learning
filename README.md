# English Game Learning (EGL)
<br>

<img align="center" src="https://i.imgur.com/iynVKTG.png" width="100%"/>

<br>
<p></p>

Did you know English is by far the world’s most studied language? And that 20% of the world speaks it?
English is by far the most commonly studied foreign language in the world, followed by French at a distant second.
That's why we created an easy game that allows the users to have fun while they’re practicing English vocabulary. Our idea is to continue creating more educational and fun games in the near future.

# The minimum viable product (MVP)

So far, our MVP will be the snake game, which will have the movement to the front automatically, with the aim of eating the apple that is inside the game board but to turn to any of the four cardinal points, the player must respond correctly the translation from English- Spanish or Spanish-English of a word that will be presented randomly in the right side of the screen.

Within this MVP when starting the game, the player must select a topic on which he wishes to play and learn the words, and there will only be a pre-established topic, which will be of  software technology topics. Within this topic, a list of words previously loaded in the English language will be presented, which will be stored in a database. When the player wishes to make a move, the translation must be consulted in the database, if it does not exist, the translation of the word in the Google translator(API) must be consulted and the result stored in the database for Be reused in a next opportunity. In case the player does not respond correctly to the translation of the word, the snake will follow its path in which it was until the player tries to rotate again or collide against the edge of the board or the snake itself. The game will increase the speed of the movement and the size of the snake each time it reaches the preset goal of eating the apple.

The idea of this game is that the user learns how write correctly vocabulary, therefore, he will be asked randomly 7 times the same word, until he learns it and then he will be asked if he wants the word to be deleted, that means don't ask him more because he thinks he already has learned it.

## Snake Game:
<br>
<img align="center" src="https://i.imgur.com/XmE7pZj.png" width="100%"/>
<br>

## Installation

If you want to install this game in your local machine:

```bash
git clone https://github.com/danyramirezg/English_Game_Learning.git
cd English_Game_Learning/
python3 manage.py runserver
```

Then type in the browser: 

 - http://localhost:8000/snake
 
 And be prepared to play and practice vocabulary!

## How to play?

 - Step 1: Press any key to start.
 - Step 2: In the right part of the screen you will see a cross with 4 directions and each has a word, that means the side you want the snake to turn.
 - Step 3: In the middle of the cross, you will see an empty space, where you will write the translation of the word you want the snake to turn.
 - Step 4: After you write the right word press enter and the snake will turn.
 
*Keep in mind if you don’t write the right word, the words are going to change randomly. 

Go to play... Good luck!

## Architecture of the project

<br>
<img align="center" src="https://i.imgur.com/fbqiV2b.png" width="100%"/>

<br>

<p></p>

## Data Modelling 

This diagram shows how data is being stored

<br>
<img align="center" src="https://imgur.com/Q8kC2KX.png" width="1000%"/>

<br>


## Authors

[Joshua Hernandez](https://github.com/joshuaciencia)

[Yennifer Tobon](https://github.com/yenniferTobon)

[Daniela Ramirez Gomez](https://github.com/danyramirezg)
