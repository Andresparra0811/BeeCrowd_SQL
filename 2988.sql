select teams.name, count(matches.team_1 + matches.team_2) as matches,
sum(
case
when (matches.team_1_goals > matches.team_2_goals and teams.id = matches.team_1) or (matches.team_2_goals > matches.team_1_goals and teams.id = matches.team_2) 
then 1 else 0 end) as victories,
sum(
case
when (matches.team_1_goals < matches.team_2_goals and teams.id = matches.team_1) or (matches.team_2_goals < matches.team_1_goals and teams.id = matches.team_2) then 1 else 0 end) as defeats,
sum(
case
when (matches.team_1_goals = matches.team_2_goals AND teams.id = matches.team_1) or (matches.team_2_goals = matches.team_1_goals and teams.id = matches.team_2) then 1 else 0 end) AS draws,
sum(
case
when (matches.team_1_goals = matches.team_2_goals and teams.id = matches.team_1) or (matches.team_2_goals = matches.team_1_goals and teams.id = matches.team_2) then 1 else 0 end) + 
sum(
case
when (matches.team_1_goals > matches.team_2_goals and teams.id = matches.team_1) or (matches.team_2_goals > matches.team_1_goals and teams.id = matches.team_2) then 3 else 0 end) as score
from matches, teams 
where teams.id = matches.team_1 or teams.id = matches.team_2
group by teams.name 
order by score desc;