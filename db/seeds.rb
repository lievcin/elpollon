#encoding: utf-8
Cup.delete_all
Game.delete_all
Round.delete_all
Team.delete_all
User.delete_all

cup1 = Cup.create(name: "Colombia - Apertura 2014", start_date: "25-01-2014", end_date: "21-05-2014", description:'El Torneo Apertura 2014 será la septuagésima novena (79a.) edición de la Categoría Primera A de fútbol profesional colombiano, siendo el primer torneo de la temporada 2014. Comenzará a disputarse el 25 de enero y finalizará el 21 de mayo de 2014.' )

round1 = Round.create(name: "1a Fecha - Todos contra todos", leg: 1, cup_id:cup1.id, round_type:"group")
round2 = Round.create(name: "2a Fecha - Todos contra todos", leg: 2, cup_id:cup1.id, round_type:"group")
round3 = Round.create(name: "3a Fecha - Todos contra todos", leg: 3, cup_id:cup1.id, round_type:"group")
round4 = Round.create(name: "4a Fecha - Todos contra todos", leg: 4, cup_id:cup1.id, round_type:"group")
round5 = Round.create(name: "5a Fecha - Todos contra todos", leg: 5, cup_id:cup1.id, round_type:"group")
round6 = Round.create(name: "6a Fecha - Todos contra todos", leg: 6, cup_id:cup1.id, round_type:"group")
round7 = Round.create(name: "7a Fecha - Todos contra todos", leg: 7, cup_id:cup1.id, round_type:"group")
round8 = Round.create(name: "8a Fecha - Todos contra todos", leg: 8, cup_id:cup1.id, round_type:"group")
round9 = Round.create(name: "9a Fecha - Todos contra todos", leg: 9, cup_id:cup1.id, round_type:"group")
round10 = Round.create(name: "10a Fecha - Todos contra todos", leg: 10, cup_id:cup1.id, round_type:"group")
round11 = Round.create(name: "11a Fecha - Todos contra todos", leg: 11, cup_id:cup1.id, round_type:"group")
round12 = Round.create(name: "12a Fecha - Todos contra todos", leg: 12, cup_id:cup1.id, round_type:"group")
round13 = Round.create(name: "13a Fecha - Todos contra todos", leg: 13, cup_id:cup1.id, round_type:"group")
round14 = Round.create(name: "14a Fecha - Todos contra todos", leg: 14, cup_id:cup1.id, round_type:"group")
round15 = Round.create(name: "15a Fecha - Todos contra todos", leg: 15, cup_id:cup1.id, round_type:"group")
round16 = Round.create(name: "16a Fecha - Todos contra todos", leg: 16, cup_id:cup1.id, round_type:"group")
round17 = Round.create(name: "17a Fecha - Todos contra todos", leg: 17, cup_id:cup1.id, round_type:"group")
round18 = Round.create(name: "18a Fecha - Todos contra todos", leg: 18, cup_id:cup1.id, round_type:"group")

team1 = Team.create(name: "Pat. Boyaca", acronym:"PAT", country: "Colombia")
team2 = Team.create(name: "Dep. Cali", acronym:"CAL", country: "Colombia")
team3 = Team.create(name: "Boyaca Chico", acronym:"CHI", country: "Colombia")
team4 = Team.create(name: "Itagui", acronym:"ITA", country: "Colombia")
team5 = Team.create(name: "Envigado", acronym:"ENV", country: "Colombia")
team6 = Team.create(name: "Equidad", acronym:"EQU", country: "Colombia")
team7 = Team.create(name: "Atl. Huila", acronym:"HUI", country: "Colombia")
team8 = Team.create(name: "Atl. Junior", acronym:"JUN", country: "Colombia")
team9 = Team.create(name: "Ind. Medellin", acronym:"MED", country: "Colombia")
team10 = Team.create(name: "Millonarios", acronym:"MIL", country: "Colombia")
team11 = Team.create(name: "Atl. Nacional", acronym:"NAC", country: "Colombia")
team12 = Team.create(name: "Once Caldas", acronym:"ONC", country: "Colombia")
team13 = Team.create(name: "Deportivo Pasto", acronym:"PAS", country: "Colombia")
team14 = Team.create(name: "Al. Petrolera", acronym:"ALI", country: "Colombia")
team15 = Team.create(name: "Dep. Tolima", acronym:"TOL", country: "Colombia")
team16 = Team.create(name: "Santa Fe", acronym:"SFE", country: "Colombia")
team17 = Team.create(name: "UA del Caribe", acronym:"UAC", country: "Colombia")
team18 = Team.create(name: "Fortaleza", acronym:"FOR", country: "Colombia")

game1 = Game.create(round_id: round1.id, kickoff:"2014-01-26", home_team_id:team17.id, away_team_id: team15.id)
game2 = Game.create(round_id: round1.id, kickoff:"2014-01-26", home_team_id:team5.id, away_team_id: team10.id)
game3 = Game.create(round_id: round1.id, kickoff:"2014-01-26", home_team_id:team6.id, away_team_id: team14.id)
game4 = Game.create(round_id: round1.id, kickoff:"2014-01-26", home_team_id:team3.id, away_team_id: team2.id)
game5 = Game.create(round_id: round1.id, kickoff:"2014-01-26", home_team_id:team11.id, away_team_id: team9.id)
game6 = Game.create(round_id: round1.id, kickoff:"2014-01-26", home_team_id:team13.id, away_team_id: team1.id)
game7 = Game.create(round_id: round1.id, kickoff:"2014-01-26", home_team_id:team12.id, away_team_id: team18.id)
game8 = Game.create(round_id: round1.id, kickoff:"2014-01-26", home_team_id:team16.id, away_team_id: team4.id)
game9 = Game.create(round_id: round1.id, kickoff:"2014-01-26", home_team_id:team7.id, away_team_id: team8.id)

user1  = User.create(name: "Liev", country: "UK")
user2  = User.create(name: "Daniel", country: "Israel")
user3  = User.create(name: "Alisa", country: "UK")
user4  = User.create(name: "Elena", country: "Israel")




cup2 = Cup.create(name: "Barclays Premier League 2013/14", start_date: "17-08-2013", end_date: "11-05-2014", description:"The Premier League is an English professional league for men's association football clubs. At the top of the English football league system, it is the country's primary football competition. Contested by 20 clubs, it operates on a system of promotion and relegation with the Football League. Besides English clubs, some of the Welsh clubs can also qualify to play, and participation by some Scottish or Irish clubs has also been mooted." )

round19 = Round.create(name: "Week 1", leg: 1, cup_id: cup2.id, round_type:"group")
round20 = Round.create(name: "Week 2", leg: 2, cup_id: cup2.id, round_type:"group")
round21 = Round.create(name: "Week 3", leg: 3, cup_id: cup2.id, round_type:"group")
round22 = Round.create(name: "Week 4", leg: 4, cup_id: cup2.id, round_type:"group")
round23 = Round.create(name: "Week 5", leg: 5, cup_id: cup2.id, round_type:"group")
round24 = Round.create(name: "Week 6", leg: 6, cup_id: cup2.id, round_type:"group")
round25 = Round.create(name: "Week 7", leg: 7, cup_id: cup2.id, round_type:"group")
round26 = Round.create(name: "Week 8", leg: 8, cup_id: cup2.id, round_type:"group")
round27 = Round.create(name: "Week 9", leg: 9, cup_id: cup2.id, round_type:"group")
round28 = Round.create(name: "Week 10", leg: 10, cup_id: cup2.id, round_type:"group")
round29 = Round.create(name: "Week 11", leg: 11, cup_id: cup2.id, round_type:"group")
round30 = Round.create(name: "Week 12", leg: 12, cup_id: cup2.id, round_type:"group")
round31 = Round.create(name: "Week 13", leg: 13, cup_id: cup2.id, round_type:"group")
round32 = Round.create(name: "Week 14", leg: 14, cup_id: cup2.id, round_type:"group")
round33 = Round.create(name: "Week 15", leg: 15, cup_id: cup2.id, round_type:"group")
round34 = Round.create(name: "Week 16", leg: 16, cup_id: cup2.id, round_type:"group")
round35 = Round.create(name: "Week 17", leg: 17, cup_id: cup2.id, round_type:"group")
round36 = Round.create(name: "Week 18", leg: 18, cup_id: cup2.id, round_type:"group")
round37 = Round.create(name: "Week 19", leg: 19, cup_id: cup2.id, round_type:"group")
round38 = Round.create(name: "Week 20", leg: 20, cup_id: cup2.id, round_type:"group")
round39 = Round.create(name: "Week 21", leg: 21, cup_id: cup2.id, round_type:"group")
round40 = Round.create(name: "Week 22", leg: 22, cup_id: cup2.id, round_type:"group")
round41 = Round.create(name: "Week 23", leg: 23, cup_id: cup2.id, round_type:"group")
round42 = Round.create(name: "Week 24", leg: 24, cup_id: cup2.id, round_type:"group")
round43 = Round.create(name: "Week 25", leg: 25, cup_id: cup2.id, round_type:"group")
round44 = Round.create(name: "Week 26", leg: 26, cup_id: cup2.id, round_type:"group")
round45 = Round.create(name: "Week 27", leg: 27, cup_id: cup2.id, round_type:"group")
round46 = Round.create(name: "Week 28", leg: 28, cup_id: cup2.id, round_type:"group")
round47 = Round.create(name: "Week 29", leg: 29, cup_id: cup2.id, round_type:"group")
round48 = Round.create(name: "Week 30", leg: 30, cup_id: cup2.id, round_type:"group")
round49 = Round.create(name: "Week 31", leg: 31, cup_id: cup2.id, round_type:"group")
round50 = Round.create(name: "Week 32", leg: 32, cup_id: cup2.id, round_type:"group")
round51 = Round.create(name: "Week 33", leg: 33, cup_id: cup2.id, round_type:"group")
round52 = Round.create(name: "Week 34", leg: 34, cup_id: cup2.id, round_type:"group")
round53 = Round.create(name: "Week 35", leg: 35, cup_id: cup2.id, round_type:"group")
round54 = Round.create(name: "Week 36", leg: 36, cup_id: cup2.id, round_type:"group")
round55 = Round.create(name: "Week 37", leg: 37, cup_id: cup2.id, round_type:"group")
round56 = Round.create(name: "Week 38", leg: 38, cup_id: cup2.id, round_type:"group")

team19= Team.create(name:  "Chelsea", acronym:"CHL", country:"England")
team20= Team.create(name:  "Arsenal", acronym:"ARS", country:"England")
team21= Team.create(name:  "Manchester City", acronym:"MAC", country:"England")
team22= Team.create(name:  "Everton", acronym:"EVR", country:"England")
team23= Team.create(name:  "Tottenham", acronym:"TOT", country:"England")
team24= Team.create(name:  "Liverpool", acronym:"LIV", country:"England")
team25= Team.create(name:  "Manchester Utd", acronym:"MUD", country:"England")
team26= Team.create(name:  "Newcastle", acronym:"NEW", country:"England")
team27= Team.create(name:  "Southampton", acronym:"SOU", country:"England")
team28= Team.create(name:  "Hull City", acronym:"HUL", country:"England")
team29= Team.create(name:  "Aston Villa", acronym:"ASV", country:"England")
team30= Team.create(name:  "Stoke City", acronym:"STO", country:"England")
team31= Team.create(name:  "Swansea", acronym:"SWA", country:"England")
team32= Team.create(name:  "West Brom", acronym:"WBA", country:"England")
team33= Team.create(name:  "Norwich", acronym:"NOR", country:"England")
team34= Team.create(name:  "Fulham", acronym:"FUL", country:"England")
team35= Team.create(name:  "West Ham", acronym:"WHU", country:"England")
team36= Team.create(name:  "Cardiff", acronym:"CAR", country:"England")
team37= Team.create(name:  "Sunderland", acronym:"SUN", country:"England")
team38= Team.create(name:  "Crystal Palace", acronym:"CPF", country:"England")

game10= Game.create(round_id: round39.id, kickoff: "2014-01-11", home_team_id: team28.id, away_team_id: team19.id)
game11= Game.create(round_id: round39.id, kickoff: "2014-01-11", home_team_id: team36.id, away_team_id: team35.id)
game12= Game.create(round_id: round39.id, kickoff: "2014-01-11", home_team_id: team27.id, away_team_id: team32.id)
game13= Game.create(round_id: round39.id, kickoff: "2014-01-11", home_team_id: team34.id, away_team_id: team37.id)
game14= Game.create(round_id: round39.id, kickoff: "2014-01-11", home_team_id: team22.id, away_team_id: team33.id)
game15= Game.create(round_id: round39.id, kickoff: "2014-01-11", home_team_id: team23.id, away_team_id: team38.id)
game16= Game.create(round_id: round39.id, kickoff: "2014-01-11", home_team_id: team25.id, away_team_id: team31.id)
game17= Game.create(round_id: round39.id, kickoff: "2014-01-12 14:05", home_team_id: team26.id, away_team_id: team21.id)
game18= Game.create(round_id: round39.id, kickoff: "2014-01-12 16:10", home_team_id: team30.id, away_team_id: team24.id)
game19= Game.create(round_id: round39.id, kickoff: "2014-01-13 20:00", home_team_id: team29.id, away_team_id: team20.id)
