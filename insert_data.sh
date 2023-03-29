#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
#! /bin/bash

echo $($PSQL "TRUNCATE games, teams") 

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do
#ignore the first line of data
if [[ $YEAR != "year" ]] 
then
#get team id 
WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
#if not found
if [[ -z $WINNER_TEAM_ID ]]
then 
#insert Winning Team
INSERT_WINNING_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
if [[ $INSERT_WINNING_TEAM_RESULT == "INSERT 0 1" ]]
then 
echo Inserted into teams, $WINNER
fi
fi
fi
if [[ $OPPONENT != "opponent" ]]
then 
OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'") 
if [[ -z $OPPONENT_TEAM_ID ]]
then 
#insert Opponent team
INSERT_OPPONENT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
if [[ $INSERT_OPPONENT_TEAM_RESULT == "INSERT 0 1" ]] 
then 
echo Inserted into teams, $OPPONENT
fi
fi
#get new team_ids
WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'") 
fi
if [[ $YEAR != "year" ]]
then
INSERT_GAMES_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_TEAM_ID, $OPPONENT_TEAM_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
if [[ $INSERT_GAMES_RESULT == "INSERT 0 1" ]]
then 
echo Inserted into games, $YEAR $ROUND $WINNER_TEAM_ID $OPPONENT_TEAM_ID $WINNER_GOALS $OPPONENT_GOALS
fi
fi

done
