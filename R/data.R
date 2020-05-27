#' Team stats for each season
#'
#' @docType data
#' @format A data frame with one row for each team in each season for which data is available (2016-2019) with statistics for team performance
#' \describe{
#' \item{team_id}{the id of team as they appear across all datasets in `nwslR`}
#' \item{goals}{total number of goals scored}
#' \item{assists}{total number of assists}
#' \item{shots}{total number of shots}
#' \item{shots_on_goals}{total number of shot on goal}
#' \item{fouls_committed}{total number of fouls committed by team}
#' \item{fouls_suffered}{total number of time the team was fouled}
#' \item{offsides}{total number of offside calls}
#' \item{corner_kicks}{total number of corner kicks taken}
#' \item{games_played}{total number of games played}
#' \item{yellow_cards}{total number of yellow cards received}
#' \item{red_cards}{total number of red cards received}
#' \item{penalty_kick_goals}{total number of goals scored from penalty kicks}
#' \item{penalty_kick_attempts}{total number of penalty kicks awarded}
#' \item{season}{season for which the statistics represent}
#' \item{wins}{number of games won}
#' \item{draws}{number of games drawn}
#' \item{losses}{number of games lost}
#'}
#'
#' @source \url{http://www.nwslsoccer.com/stats#teams}
#'

"team_stats_season"


#' Franchise information for the National Women's Soccer League (NWSL)
#'
#' @docType data
#' @format A data frame with one row for each team in each season for all seasons of the NWSL with information about each team in the league
#' \describe{
#' \item{team_id}{the id of team as they appear across all datasets in `nwslR`}
#' \item{team_name}{name of team}
#' \item{city}{home city of team}
#' \item{state}{home state of team}
#' \item{season}{season for which the team was active}
#' }
#'
#' @source \url{https://en.wikipedia.org/wiki/National_Women\%27s_Soccer_League}
#'

"franchise"

#' Stadium information for games played each season
#'
#' @docType data
#' @format A data frame with one row for each team in each season for all seasons with information regarding home stadiums and average attendance
#' \describe{
#' \item{team_id}{the id of team as they appear across all datasets in `nwslR`}
#' \item{pri_stadium_name}{name of primary home stadium}
#' \item{pri_stadium_alias}{if stadium was ever known by another name during the existence of the team, it is denoted here}
#' \item{pri_town}{town of primary home stadium}
#' \item{pri_state}{state of primary home stadium}
#' \item{pri_capacity}{seating capacity of primary home stadium}
#' \item{sec_stadium_name}{name of secondary home stadium (only if home games were ever played elsewhere during the season)}
#' \item{sec_stadium_alias}{if stadium was ever known by another name during the existence of the team, it is denoted here}
#' \item{sec_town}{town of secondary home stadium}
#' \item{sec_state}{state of secondary home stadium}
#' \item{sec_capacity}{seating capacity of secondary home stadium}
#' \item{avg_attendance}{average season home game attendance}
#' \item{season}{season for which the statistics represent}
#'}
#'
#' @source \url{https://en.wikipedia.org/wiki/List_of_National_Women\%27s_Soccer_League_stadiums}
#'

"stadium"

#' Game IDs for all games 2015-2019
#'
#' @docType data
#' @format A dataframe of unique IDs for all games played from 2015-2019 with scores and winners
#' \describe{
#' \item{game_id}{unique identifier for each game}
#' \item{game_date}{day the game was played}
#' \item{home_team}{home team id}
#' \item{away_team}{away team id}
#' \item{home_pts}{number of goals scored by the home team}
#' \item{away_pts}{number of goals scored by the away team}
#' \item{winner}{team id for winning team, if applicable. If tied, NA.}
#' \item{season}{season that the game was played}
#' }
#'
#' @source \url{https://www.nwslsoccer.com}

"game"

#' Player stats for goalkeepers in each season
#'
#' @docType data
#' @format A data frame with one row for each player in each season for which data is available (2013-2019) with statistics for goalkeepers
#' \describe{
#' \item{person_id}{the id of the player beginning at 10000}
#' \item{season}{season for which the statistics represent}
#' \item{nation}{nationality of the player}
#' \item{pos}{position}
#' \item{team_id}{the id of team as they appear across all datasets in `nwslR`}
#' \item{mp}{total number of matches the player appeared in}
#' \item{starts}{total number of matches the player started}
#' \item{min}{total number of minutes played}
#' \item{ga}{goals against}
#' \item{ga_90}{goals against per 90 minutes}
#' \item{so_ta}{shots on target against}
#' \item{saves}{total number of saves}
#' \item{save_pct}{save percentage}
#' \item{w}{total number of wins}
#' \item{d}{total number of draws}
#' \item{l}{total number of losses}
#' \item{cs}{clean sheets}
#' \item{cs_pct}{clean sheet percentage}
#' \item{crd_y}{total number of yellow cards received}
#' \item{crd_r}{total number of red cards received}
#'}
#'
#' @source \url{https://fbref.com/en/comps/182/keepers/NWSL-Stats}
#'

"goalkeeper_season_stats"

#' Player stats for field players in each season
#'
#' @docType data
#' @format A data frame with one row for each player in each season for which data is available (2013-2019) with statistics for field players
#' \describe{
#' \item{person_id}{the id of the player beginning at 1}
#' \item{season}{season for which the statistics represent}
#' \item{nation}{nationality of the player}
#' \item{pos}{position}
#' \item{team_id}{the id of team as they appear across all datasets in `nwslR`}
#' \item{mp}{total number of matches the player appeared in}
#' \item{starts}{total number of matches the player started}
#' \item{min}{total number of minutes played}
#' \item{gls}{goals scored}
#' \item{ast}{assists}
#' \item{pk}{penalty kicks made}
#' \item{p_katt}{penalty kicks attempted}
#' \item{crd_y}{total number of yellow cards received}
#' \item{crd_r}{total number of red cards received}
#'}
#'
#' @source \url{https://fbref.com/en/comps/182/keepers/NWSL-Stats}
#'

"fieldplayer_overall_season_stats"

#' Player information for all players in the National Women's Soccer League (NWSL)
#'
#' @docType data
#' @format A data frame with one row for each player that is currently playing or has played in the NWSL
#' \describe{
#' \item{person_id}{the id of the player}
#' \item{player}{the player's name}
#' \item{nation}{home city of team}
#' \item{pos}{home state of team}
#' \item{name_other}{nicknames, other names that player uses, etc.}
#' }
#'
#'

"player"

#' Player award history for the National Women's Soccer League (NWSL)
#'
#' @docType data
#' @format A data frame with one row for each award in each season awarded to an NWSL player
#' \describe{
#' \item{person_id}{the id of the player}
#' \item{season}{season in which the award was won}
#' \item{award}{name of the award}
#' }
#'
#'

"award"


#' National Women's Soccer League (NWSL) Draft Picks since 2013
#'
#' @docType data
#' @format A data frame with one row per player selected
#' @source Wikipedia (16 Jan 2020)
#' \describe{
#' \item{year}{Year of the draft}
#' \item{round}{Round of the draft}
#' \item{pick}{Overall selection number}
#' \item{nation}{Player's home country}
#' \item{player}{player name}
#' \item{pos}{position(s) declared}
#' \item{team_name}{team making the pick}
#' \item{previous_team}{college and/or previous club side}
#' \item{notes}{additional notes, indicating a pick was obtained via trade or other means}
#' \item{person_id}{the id of the player}
#' \item{team_id}{the id of team as they appear across all datasets in `nwslR`}
#' }

"draftpicks"

#' Results of all games played 2015-2019 in the National Women's Soccer League (NWSL)
#'
#' @docType data
#' @format A data frame with one row for each game played
#' \describe{
#' \item{game_id}{unique game id in the follow format: "home-team-vs-away-team_YYYY-MM-DD}
#' \item{game_date}{date game was played}
#' \item{home_team}{home team unique ID}
#' \item{away_team}{away team unique ID}
#' \item{home_pts}{points scored by home team}
#' \item{away_pts}{points scored by the away team}
#' \item{winnter}{team ID for winning team (NA if draw)}
#' \item{season}{season game was played}
#' }
#'
#'
"game"


#' Team statistics for each game in the National Women's Soccer League (NWSL) during 2016-2019
#'
#' @docType data
#' @format A data frame with one row for each team in each game (i.e. each game has two rows, one for an away team and one for a home team). Note: variables are currently undocumented.
#' \describe{
#' \item{game_id}{unique game id in the following format: "home-team-vs-away-team_YYYY-MM-DD}
#' \item{season}{year game was played}
#' \item{status}{home/away team observations}
#' \item{team_id}{the id for the team}
#' \item{total_through_ball}{total passes splitting the defense for a teammate to run on to}
#' \item{duel_lost}{number of 50/50 contests lost}
#' \item{blocked_scoring_att}{blocked scoring attempt that is on target}
#' \item{leftside_pass}{a pass to a player on the left hand side of the pitch in the opposition half}
#' \item{poss_won_att_3_rd}{total number of times possession was regained in the attacking third of the field}
#' \item{dispossessed}{player is dispossessed on the ball by an opponent – no dribble involved}
#' \item{accurate_keeper_sweeper}{goalkeeper comes off her line, wins the ball and wins possession for her team}
#' \item{accurate_cross}{ball played from a wide position intending to reach a teammate in a specific area in front of the goal}
#' \item{att_rf_total}{total right-footed shots}
#' \item{att_bx_right}{shot from the right of the box}
#' \item{six_yard_block}{a shot blocked from an attempt inside the six-yard box}
#' \item{accurate_pass}{passes completed from one player to another (excluding throw-ins, keeper throws and crosses)}
#' \item{won_tackle}{total tackles won by the team (winning possession or putting the ball out of play)}
#' \item{att_assist_setplay}{number of indirect free kicks attempted}
#' \item{att_goal_high_centre}{attempt that result in goal, placement high center}
#' \item{att_miss_left}{attempt on goal that miss left}
#' \item{total_final_third_passes}{total number of passes (successful or unsuccessful) where ball ends in the final third of the pitch}
#' \item{rightside_pass}{a pass to a player on the right hand side of the pitch in the opposition half}
#' \item{attempts_conceded_ibox}{attempts on goal conceded in box}
#' \item{touches}{total sum of a team’s on-the-ball events}
#' \item{total_fwd_zone_pass}{total number of passes that end in the opposition half}
#' \item{att_assist_openplay}{a shot assist from an open play situation}
#' \item{won_contest}{total dribbles where a team player beats an opponent }
#' \item{goals_openplay}{goals scored in open play}
#' \item{accurate_fwd_zone_pass}{an accurate pass that ends in the attacking half of the pitch}
#' \item{total_chipped_pass}{total number of passes (successful or unsuccessful) which are lofted into the air and not along the ground – does not include crosses}
#' \item{lost_corners}{corner conceded}
#' \item{fouled_final_third}{number of fouls in the attacking final third}
#' \item{saves}{total number of saves by the goalkeeper}
#' \item{ontarget_scoring_att}{shot on target (i.e. applies for a shot that was not blocked, and did not hit woodwork, but may have been saved off the line by a player on the defending team}
#' \item{total_scoring_att}{total number of shots at goal (excludes own goals)}
#' \item{blocked_pass}{blocked passes}
#' \item{attempts_conceded_obox}{an attempt conceded from a shot from outside the box}
#' \item{ball_recovery}{a player takes possession of a loose ball}
#' \item{subs_made}{number of substitutions made}
#' \item{att_ibox_post}{post/crossbar hit from a shot inside the box}
#' \item{poss_won_def_3_rd}{total number of times possession was regained in the defensive third of the field}
#' \item{accurate_back_zone_pass}{a pass that is successful and ends in a player’s own half of the pitch }
#' \item{att_cmiss_left}{shot that misses within 0.5 meters to the left of the goal}
#' \item{att_goal_low_centre}{a goal in the bottom center of the goal}
#' \item{goal_assist_openplay}{goal assist from an open play situation}
#' \item{passes_right}{Pass to the right wing (attacking half)}
#' \item{total_throws}{total number of throw-ins}
#' \item{att_obox_target}{shot from outside the box that was saved by the goalkeeper}
#' \item{successful_open_play_pass}{any type of pass to a teammate in open play}
#' \item{goal_assist_setplay}{a goal assist from a corner, free kick or throw-in, where the assist itself may be several passes after the set play in question.}
#' \item{total_back_zone_pass}{total number of passes that end in the player’s own half – excluding throw-ins and keeper throws}
#' \item{total_long_balls}{total passes longer than 35 yards}
#' \item{att_hd_goal}{a goal scored with the head}
#' \item{accurate_keeper_throws}{accurate throws from the goalkeeper in open play}
#' \item{att_obx_centre}{total shots from outside the box, in the center (less than 35 yards out)}
#' \item{att_openplay}{a shot attempt created from an open play or a fast break}
#' \item{poss_won_mid_3_rd}{total number of times possession was regained in the midfield third of the field}
#' \item{put_through}{an attacking player who plays a pass/cross/shot through an attempted block}
#' \item{big_chance_created}{a pass which led to a clear scoring opportunity e.g. one-on-one situation or a shot from just a few yards out}
#' \item{att_ibox_target}{shot from inside the box that are saved by the goalkeeper}
#' \item{freekick_cross}{a ball played into the box directly from a free kick (successful or unsuccessful)}
#' \item{att_freekick_total}{total shots from direct free kicks}
#' \item{goal_kicks}{goalkeeper restarts play with a goal kick}
#' \item{att_lf_total}{total left-footed shots}
#' \item{open_play_pass}{any type of pass in open play (successful or unsuccessful)}
#' \item{goal_assist_intentional}{qualifier for an assist to confirm that the assisting player had a direct intention to set up a goal attempt}
#' \item{aerial_won}{successful aerial duels}
#' \item{goal_assist}{player assists a goal by passing the ball to the player who scored the goal}
#' \item{total_pass}{total of all attempted (successful or unsuccessful) passes excluding throw-ins, keeper throws and crosses}
#' \item{midfielder_goals}{goals scored by midfielders}
#' \item{total_launches}{number of long balls launched forward into an area of the pitch rather than to a specific team-mate}
#' \item{fwd_pass}{a pass forward (excludes throw-ins, keeper throws, goal kicks and crosses)}
#' \item{effective_blocked_cross}{total number of opposition crosses blocked by the team resulting in possession being won}
#' \item{outfielder_block}{defender blocks a shot}
#' \item{att_miss_high_left}{attempt that misses - over the crossbar and left}
#' \item{goals}{total goals scored}
#' \item{touches_in_opp_box}{number of touches in opposing team's box}
#' \item{total_corners_intobox}{total corners that reached the box – includes long balls if the corner kick is passed greater than 35 yards}
#' \item{blocked_cross}{total number of opposition crosses blocked by the team}
#' \item{att_miss_right}{attempt that misses - to the right}
#' \item{att_bx_centre}{shot from the center of the box}
#' \item{post_scoring_att}{shot on goal which hits the post}
#' \item{ontarget_att_assist}{player assists another player, who takes a shot that is on target (includes goals)}
#' \item{long_pass_own_to_opp}{long pass made from a player’s own half into the opposition’s half}
#' \item{att_ibox_goal}{goal from a shot inside the box}
#' \item{accurate_chipped_pass}{total number of successful passes played in the air and not along the ground – does not include crosses}
#' \item{duel_won}{duel over the possession of the ball where a player wins the ball}
#' \item{total_keeper_sweeper}{goalkeeper attempts to come off her line and win possession of the ball}
#' \item{successful_final_third_passes}{total number of successful passes where the ball ends in the final third of the pitch (excludes throw-ins, keeper throws and crosses)}
#' \item{att_rf_goal}{right-footed goals}
#' \item{shield_ball_oop}{a defender shields the ball with her body from an opponent as the ball rolls out of play}
#' \item{fk_foul_won}{free kicks won when fouled or as a result of dangerous play by the opposition (does not include handball or penalties)}
#' \item{total_cross_nocorner}{total number of crosses that are not from corners}
#' \item{keeper_throws}{goalkeeper throw-outs}
#' \item{att_bx_left}{shot from the left side of the box}
#' \item{successful_put_through}{an attacking player who plays a pass/cross/shot through an attempted block successfully}
#' \item{total_tackle}{total number of tackles}
#' \item{att_sv_low_left}{a shot that is saved in the low, left part of the goal}
#' \item{passes_left}{pass to the left wing (attacking half)}
#' \item{big_chance_scored}{a goal scored from a clear-cut chance}
#' \item{att_rf_target}{right-footed shots that were saved by the goalkeeper}
#' \item{att_cmiss_high_left}{shot that misses within 0.5 meters over the crossbar and left}
#' \item{accurate_launches}{long ball played forward without an obvious target but successfully finds a team-mate}
#' \item{poss_lost_all}{total losses of possession}
#' \item{att_sv_low_centre}{a shot that is saved in the bottom centre part of the goal}
#' \item{accurate_long_balls}{accurate passes further than 35 yards (excluding throw-ins, crosses, keeper throws)}
#' \item{challenge_lost}{challenge that did not make contact, i.e. a missed challenge where the player was dribbled past}
#' \item{total_cross}{total number of crosses (via corners, open play and set pieces)}
#' \item{att_goal_low_right}{a goal in the bottom right of the goal}
#' \item{clean_sheet}{no goals conceded in the game (player must play 90 minutes)}
#' \item{att_obox_blocked}{shot from outside the box that is blocked before reaching the goal }
#' \item{att_ibox_miss}{attempts off target from shots inside the box}
#' \item{accurate_goal_kicks}{attempt off target from a shot inside the box}
#' \item{saved_obox}{shot saved from shot outside the box}
#' \item{unsuccessful_touch}{a player only touched the ball and lost possession – bad control}
#' \item{shot_off_target}{number of shots off target - shot wide or over the goal}
#' \item{forward_goals}{goals scored by forwards}
#' \item{poss_lost_ctrl}{total losses of possession excluding clearances & long goalkeeper distribution}
#' \item{hand_ball}{number of hand balls}
#' \item{goal_assist_deadball}{assist directly from a corner or free kick}
#' \item{att_ibox_blocked}{shot attempt from inside the box that is blocked (excludes any shots saved/cleared off the line in a defensive act)}
#' \item{aerial_lost}{unsuccessful aerial duels. Definition of an aerial duel: Two outfield players compete for the ball, with either both players jumping or only one jumping and the other contesting the header by making it difficult to win, where one player wins the contest with a header. In the case of an outfield player and a goalkeeper competing for the ball where the goalkeeper punches it clear, this is also classed as an aerial duel.}
#' \item{att_sv_low_right}{a shot that is saved in the low, right part of the goal}
#' \item{crosses_18_yard}{a cross caught by the goalkeeper when delivered from within 18 yards of the by-line}
#' \item{final_third_entries}{a pass or other action where the ball moves from outside the final third into the final third}
#' \item{att_hd_total}{total headed attempts}
#' \item{accurate_cross_nocorner}{accurate crosses (including freekicks but excluding corners)}
#' \item{effective_clearance}{a successful defensive clearance – where a player under pressure kicks the ball clear of the defensive zone or/and out of play}
#' \item{fk_foul_lost}{free kicks conceded to the opposition via fouls, handballs, dangerous play, 6-second violations, or back passes (includes penalties)}
#' \item{att_hd_miss}{a headed attempt off target}
#' \item{won_corners}{total corners forced by the team}
#' \item{possession_percentage}{the percentage of overall ball possession the given team had during the game}
#' \item{interception}{a defending player intercepts a pass between opposition players}
#' \item{attempted_tackle_foul}{a foul event with "attempted tackles" qualifier assigned}
#' \item{backward_pass}{a pass backward (excludes throw-ins, keeper throws, goal kicks and crosses)}
#' \item{first_half_goals}{goals scored in the first half of play}
#' \item{interception_won}{interception where the player wins and retains possession of the ball}
#' \item{pen_area_entries}{a pass or other action where the ball moves from outside to inside the penalty area}
#' \item{att_lf_goal}{goal from a left-footed shot}
#' \item{accurate_throws}{all accurate throw-ins}
#' \item{big_chance_missed}{a clear-cut scoring opportunity which was not converted / scored}
#' \item{accurate_freekick_cross}{a ball played into the box directly from a free kick that successfully found a team-mate}
#' \item{att_hd_target}{a headed attempt that is saved by the goalkeeper}
#' \item{total_contest}{a dribble past a player attempted (contests always involve 2 players) – doesn’t include ‘overrun’ situations where the attacking player takes on an opponent but the ball runs away from them out of play or to an opponent}
#' \item{hit_woodwork}{total number of occasions the ball hits the post in any situation (includes blocked onto or saved, but not goals)}
#' \item{total_clearance}{total number of clearances}
#' \item{long_pass_own_to_opp_success}{successful long pass from a player’s own half into the opposition’s half}
#' \item{accurate_corners_intobox}{accurate corner distributions into the box – can include long balls if the corner kick is passed further than 35 yards}
#' \item{total_att_assist}{player assists a shot (including goals)}
#' \item{att_post_left}{a shot that hits the left post}
#' \item{att_setpiece}{a shot that came directly after a set-piece (corner, free kick or throw-in)}
#' \item{offtarget_att_assist}{player assists another player, who takes a shot but misses the goal}
#' \item{att_obox_miss}{shot that misses the goal completely that is from outside the box}
#' \item{corner_taken}{player takes a corner}
#' \item{crosses_18_yardplus}{a cross caught by the goalkeeper when delivered from further than 18 yards from the by-line}
#' \item{formation_used}{formation used}
#' \item{total_shots}{total shots}
#' \item{passing_accuracy}{passing accuracy}
#' \item{shot_faced}{shot goalkeeper faced}
#' \item{shots_on_goal}{shots on goal}
#' \item{total_flick_on}{total number of passes (successful or unsuccessful) which are “flicked” on to a running team-mate - usually a header}
#' \item{diving_save}{combination of ALL diving saves and catches, including saves where the ball ends up still in danger in the possession of an attacking player}
#' \item{att_freekick_miss}{total shots missed from freekicks}
#' \item{goals_conceded}{number of goals conceded}
#' \item{att_lg_centre}{shot center outside box (more than 35 yards)}
#' \item{total_high_claim}{total number of high claims by goalkeeper}
#' \item{error_lead_to_goal}{a mistake which leads to the opposition scoring}
#' \item{goals_conceded_ibox}{goal conceded from a shot inside the box}
#' \item{interceptions_in_box}{interception made within the penalty area}
#' \item{total_offside}{offside total}
#' \item{good_high_claim}{goalkeeper catches a cross}
#' \item{saved_ibox}{shot saved from shot inside the box}
#' \item{att_miss_high}{attempt that misses - over the crossbar}
#' \item{att_sv_high_centre}{shot that is saved in the top center part of the goal}
#' \item{effective_head_clearance}{a successful defensive clearance via a header – where a player under pressure heads the ball clear of the defensive zone or/and out of play}
#' \item{accurate_flick_on}{total number of passes which are “flicked” on and successfully find a team-mate – usually a header}
#' \item{accurate_layoffs}{a successful pass by a striker who has received the ball with her back to goal and then plays the ball back towards team-mates}
#' \item{total_yellow_card}{total yellow cards}
#' \item{head_clearance}{clearance via a header}
#' \item{att_lf_target}{left-footed shot that was saved by the goalkeeper}
#' \item{att_cmiss_right}{a shot that misses within 0.5 meters to the right of the goal}
#' \item{att_sv_high_left}{a shot that is saved in the top left of the goal}
#' \item{att_freekick_target}{a direct free kick saved by the goalkeeper}
#' \item{overrun}{a player attempts a dribble but hits the ball too far ahead and loses it}
#' \item{total_layoffs}{total passes by a striker who has received the ball with her back to goal and then plays the ball back towards team-mates}
#' \item{total_pull_back}{an attacking player reaches the byline and passes the ball in a backwards direction (successful or unsuccessful)}
#' \item{att_miss_high_right}{attempt that misses - over the crossbar and right}
#' \item{accurate_through_ball}{accurate passes that leave a player one-on-one with the goalkeeper}
#' \item{clearance_off_line}{clearance/blocked shot off the line}
#' \item{att_goal_high_right}{a goal in the top right of the goal}
#' \item{att_post_high}{a shot that hits the crossbar}
#' \item{att_cmiss_high}{shot that misses within 0.5 meters over the crossbar}
#' \item{att_goal_low_left}{a goal in the bottom left of the goal}
#' \item{att_sv_high_right}{a shot that is saved in the top right of the goal}
#' \item{att_obxd_right}{total shots from outside the box to the right adjacent to the penalty area}
#' \item{pts_gained_losing_pos}{points gained from losing positions}
#' \item{att_cmiss_high_right}{shot that misses within 0.5 meters over the crossbar and right}
#' \item{goals_conceded_obox}{goal conceded from a shot outside the box}
#' \item{att_obox_goal}{goal from a shot outside the box}
#' \item{pts_dropped_winning_pos}{points dropped from winning positions}
#' \item{error_lead_to_shot}{a mistake which leads to an opposition shot}
#' \item{penalty_conceded}{penalty awarded against the team in question (including handballs) - differs from "pen_goals_conceded" in that the penalty kick has been conceded but the opposition may or may not have scored the penalty}
#' \item{penalty_faced}{goalkeeper faced a penalty kick}
#' \item{att_obx_right}{total shots from outside the box, on the right (less than 35 yards out)}
#' \item{pen_goals_conceded}{penalty goal conceded (and scored) against the team in question}
#' \item{att_pen_goal}{penalty goal}
#' \item{att_goal_high_left}{a goal in the top left of the goal}
#' \item{penalty_won}{player fouled within the penalty box (excludes any penalties won for handball)}
#' \item{punches}{goalkeeper punches the ball clear from a high ball}
#' \item{own_goal_accrued}{own goal}
#' \item{att_ibox_own_goal}{own goal from inside the box}
#' \item{own_goals}{total own goals conceded}
#' \item{att_obox_post}{shot from outside the box that hit the post}
#' \item{second_yellow}{second yellow card given}
#' \item{total_red_card}{total number of red cards awarded to the team overall}
#' \item{defender_goals}{a goal scored by a defender}
#' \item{att_one_on_one}{a shot attempt where the attacker was in a one-on-one situation against the goalkeeper}
#' \item{att_freekick_post}{a direct free kick that hits the post}
#' \item{att_pen_post}{a penalty that hits the post}
#' \item{att_post_right}{a shot that hits the right post}
#' \item{contentious_decision}{any major talking point or error made by the referee}
#' \item{att_obxd_left}{total shots from outside the box to the left adjacent to the penalty area}
#' \item{att_hd_post}{a headed attempt that hits the woodwork}
#' \item{foul_throw_in}{throw-in taken incorrectly}
#' \item{att_lg_left}{shot left outside box (more than 35 yards)}
#' \item{att_fastbreak}{shot resulting from a counter-attack}
#' \item{shot_fastbreak}{shots made following a fast break situation}
#' \item{total_fastbreak}{total number of fast breaks that occurred}
#' \item{att_obx_left}{total shots from outside the box to the left (less that 35 yards)}
#' \item{accurate_pull_back}{an attacking player reaches the byline and successfully passes the ball in a backwards direction to a team-mate}
#' \item{att_freekick_goal}{goal from a direct free kick}
#' \item{last_man_tackle}{a player makes a defensive action/tackle and is the last person between the opponent and the goal}
#' \item{attempts_obox}{total shots that are outside the box}
#' \item{attempts_ibox}{total shots that are inside the box}
#' \item{att_pen_miss}{a penalty shot that goes wide of the goal or over the crossbar}
#' \item{goal_fastbreak}{goals scored from a fast break situation}
#' \item{att_obp_goal}{goal scored with other body part}
#' \item{penalty_save}{penalty save made}
#' \item{att_pen_target}{penalty that was saved by the goalkeeper}
#' \item{att_lg_right}{shot right outside box (more than 35 yards)}
#' \item{att_corner}{shot that came after a corner was taken}
#' }
#'
#'  @source \url{https://winsports.dayscript.com/docs/database/match_player_stats}
#'
"adv_team_stats"

#' Player statistics for player in each game in the National Women's Soccer League (NWSL) during 2016-2019
#'
#' @docType data
#' @format A data frame with one row for each player per team in each game (i.e. each game has two rows, one for an away team and one for a home team).
#' \describe{
#' \item{game_id}{unique game id in the following format: "home-team-vs-away-team_YYYY-MM-DD}
#' \item{status}{home/away team observations}
#' \item{team_id}{the id for the team}
#' \item{first_name}{player first name}
#' \item{last_name}{player last name}
#' \item{person_id}{unique identifier for person across package, if available}
#' \item{shirt_number}{jersey number for player}
#' \item{position}{position played in game}
#' \item{position_side}{side of field played}
#' \item{game_started}{denotes if player started the game}
#' \item{mins_played}{minutes played in match}
#' \item{formation_place}{player position #}
#' \item{total_sub_on}{denotes if a player is subbed on the field}
#' \item{total_sub_off}{denotes if a player subbed off the field}
#' \item{player_off_id}{minute a player subs off}
#' \item{player_on_id}{minute player subs on the field}
#' \item{sub_position}{position a substitute plays}
#' \item{leftside_pass}{a pass to a player on the left hand side of the pitch in the opposition half}
#' \item{accurate_keeper_sweeper}{goalkeeper comes off her line, wins the ball and wins possession for her team}
#' \item{accurate_pass}{passes completed from one player to another (excluding throw-ins, keeper throws and crosses)}
#' \item{total_final_third_passes}{total number of passes (successful or unsuccessful) where ball ends in the final third of the pitch}
#' \item{rightside_pass}{a pass to a player on the right hand side of the pitch in the opposition half}
#' \item{attempts_conceded_ibox}{attempts on goal conceded in box}
#' \item{touches}{total sum of a team’s on-the-ball events}
#' \item{total_fwd_zone_pass}{total number of passes that end in the opposition half}
#' \item{keeper_pick_up}{goalkeeper picks the ball up - usually under pressure}
#' \item{att_assist_openplay}{a shot assist from an open play situation}
#' \item{accurate_fwd_zone_pass}{an accurate pass that ends in the attacking half of the pitch}
#' \item{saves}{total number of saves by the goalkeeper}
#' \item{attempts_conceded_obox}{an attempt conceded from a shot from outside the box}
#' \item{ball_recovery}{a player takes possession of a loose ball}
#' \item{turnover}{a player loses possession}
#' \item{poss_won_def_3_rd}{total number of times possession was regained in the defensive third of the field}
#' \item{accurate_back_zone_pass}{a pass that is successful and ends in a player’s own half of the pitch }
#' \item{successful_open_play_pass}{any type of pass to a teammate in open play}
#' \item{total_back_zone_pass}{total number of passes that end in the player’s own half – excluding throw-ins and keeper throws}
#' \item{total_long_balls}{total passes longer than 35 yards}
#' \item{accurate_keeper_throws}{accurate throws from the goalkeeper in open play}
#' \item{goal_kicks}{goalkeeper restarts play with a goal kick}
#' \item{open_play_pass}{any type of pass in open play (successful or unsuccessful)}
#' \item{total_pass}{total of all attempted (successful or unsuccessful) passes excluding throw-ins, keeper throws and crosses}
#' \item{total_launches}{number of long balls launched forward into an area of the pitch rather than to a specific team-mate}
#' \item{fwd_pass}{a pass forward (excludes throw-ins, keeper throws, goal kicks and crosses)}
#' \item{ontarget_att_assist}{player assists another player, who takes a shot that is on target (includes goals)}
#' \item{long_pass_own_to_opp}{long pass made from a player’s own half into the opposition’s half}
#' \item{total_keeper_sweeper}{goalkeeper attempts to come off her line and win possession of the ball}
#' \item{successful_final_third_passes}{total number of successful passes where the ball ends in the final third of the pitch (excludes throw-ins, keeper throws and crosses)}
#' \item{keeper_throws}{goalkeeper throw-outs}
#' \item{accurate_launches}{long ball played forward without an obvious target but successfully finds a team-mate}
#' \item{poss_lost_all}{total losses of possession}
#' \item{accurate_long_balls}{accurate passes further than 35 yards (excluding throw-ins, crosses, keeper throws)}
#' \item{clean_sheet}{no goals conceded in the game (player must play 90 minutes)}
#' \item{accurate_goal_kicks}{attempt off target from a shot inside the box}
#' \item{saved_obox}{shot saved from shot outside the box}
#' \item{unsuccessful_touch}{a player only touched the ball and lost possession – bad control}
#' \item{poss_lost_ctrl}{total losses of possession excluding clearances & long goalkeeper distribution}
#' \item{final_third_entries}{a pass or other action where the ball moves from outside the final third into the final third}
#' \item{long_pass_own_to_opp_success}{long pass made from a player’s own half into the opposition’s half}
#' \item{total_att_assist}{player assists a shot (including goals)}
#' \item{shot_faced}{shot goalkeeper faced}
#' \item{duel_lost}{number of 50/50 contests lost}
#' \item{blocked_scoring_att}{blocked scoring attempt that is on target}
#' \item{poss_won_att_3_rd}{total number of times possession was regained in the attacking third of the field}
#' \item{dispossessed}{player is dispossessed on the ball by an opponent – no dribble involved}
#' \item{accurate_cross}{ball played from a wide position intending to reach a teammate in a specific area in front of the goal}
#' \item{att_rf_total}{total right-footed shots}
#' \item{won_tackle}{total tackles won by the team (winning possession or putting the ball out of play)}
#' \item{total_chipped_pass}{total number of passes (successful or unsuccessful) which are lofted into the air and not along the ground – does not include crosses}
#' \item{lost_corners}{corner conceded}
#' \item{total_scoring_att}{total number of shots at goal (excludes own goals)}
#' \item{total_throws}{total number of throw-ins}
#' \item{att_obx_centre}{total shots from outside the box, in the center (less than 35 yards out)}
#' \item{att_openplay}{a shot attempt created from an open play or a fast break}
#' \item{poss_won_mid_3_rd}{total number of times possession was regained in the midfield third of the field}
#' \item{freekick_cross}{a ball played into the box directly from a free kick (successful or unsuccessful)}
#' \item{touches_in_opp_box}{number of touches in opposing team's box}
#' \item{accurate_chipped_pass}{total number of successful passes played in the air and not along the ground – does not include crosses}
#' \item{duel_won}{duel over the possession of the ball where a player wins the ball}
#' \item{total_cross_nocorner}{total number of crosses that are not from corners}
#' \item{total_tackle}{total number of tackles}
#' \item{passes_left}{pass to the left wing (attacking half)}
#' \item{total_cross}{total number of crosses (via corners, open play and set pieces)}
#' \item{att_obox_blocked}{shot from outside the box that is blocked before reaching the goal }
#' \item{head_pass}{pass from a header, implies success}
#' \item{crosses_18_yard}{a cross caught by the goalkeeper when delivered from within 18 yards of the by-line}
#' \item{accurate_cross_nocorner}{accurate crosses (including freekicks but excluding corners)}
#' \item{effective_clearance}{a successful defensive clearance – where a player under pressure kicks the ball clear of the defensive zone or/and out of play}
#' \item{won_corners}{total corners forced by the team}
#' \item{interception}{a defending player intercepts a pass between opposition players}
#' \item{attempted_tackle_foul}{a foul event with "attempted tackles" qualifier assigned}
#' \item{backward_pass}{a pass backward (excludes throw-ins, keeper throws, goal kicks and crosses)}
#' \item{interception_won}{interception where the player wins and retains possession of the ball}
#' \item{pen_area_entries}{a pass or other action where the ball moves from outside to inside the penalty area}
#' \item{accurate_throws}{all accurate throw-ins}
#' \item{fouls}{fouls committed}
#' \item{total_clearance}{total number of clearances}
#' \item{crosses_18_yardplus}{a cross caught by the goalkeeper when delivered from further than 18 yards from the by-line}
#' \item{total_shots}{total shots}
#' \item{effective_blocked_cross}{total number of opposition crosses blocked by the team resulting in possession being won}
#' \item{outfielder_block}{defender blocks a shot}
#' \item{blocked_cross}{total number of opposition crosses blocked by the team}
#' \item{shield_ball_oop}{a defender shields the ball with her body from an opponent as the ball rolls out of play}
#' \item{offside_provoked}{awarded to the last defender when an offside decision is given}
#' \item{ontarget_scoring_att}{shot on target (i.e. applies for a shot that was not blocked, and did not hit woodwork, but may have been saved off the line by a player on the defending team}
#' \item{passes_right}{Pass to the right wing (attacking half)}
#' \item{att_ibox_target}{shot from inside the box that are saved by the goalkeeper}
#' \item{att_bx_centre}{shot from the center of the box}
#' \item{att_sv_low_centre}{a shot that is saved in the bottom centre part of the goal}
#' \item{att_hd_total}{total headed attempts}
#' \item{att_hd_target}{a headed attempt that is saved by the goalkeeper}
#' \item{att_setpiece}{a shot that came directly after a set-piece (corner, free kick or throw-in)}
#' \item{shots_on_goal}{shots on goal}
#' \item{aerial_lost}{unsuccessful aerial duels. Definition of an aerial duel: Two outfield players compete for the ball, with either both players jumping or only one jumping and the other contesting the header by making it difficult to win, where one player wins the contest with a header. In the case of an outfield player and a goalkeeper competing for the ball where the goalkeeper punches it clear, this is also classed as an aerial duel.}
#' \item{offtarget_att_assist}{player assists another player, who takes a shot but misses the goal}
#' \item{was_fouled}{number of fouls on the player}
#' \item{aerial_won}{successful aerial duels}
#' \item{att_miss_right}{attempt that misses - to the right}
#' \item{shot_off_target}{number of shots off target - shot wide or over the goal}
#' \item{att_obox_miss}{shot that misses the goal completely that is from outside the box}
#' \item{att_goal_high_centre}{attempt that result in goal, placement high center}
#' \item{goals_openplay}{goals scored in open play}
#' \item{fouled_final_third}{number of fouls in the attacking final third}
#' \item{blocked_pass}{blocked passes}
#' \item{att_hd_goal}{a goal scored with the head}
#' \item{put_through}{an attacking player who plays a pass/cross/shot through an attempted block}
#' \item{big_chance_created}{a pass which led to a clear scoring opportunity e.g. one-on-one situation or a shot from just a few yards out}
#' \item{att_lf_total}{total left-footed shots}
#' \item{goals}{total goals scored}
#' \item{att_ibox_goal}{goal from a shot inside the box}
#' \item{successful_put_through}{an attacking player who plays a pass/cross/shot through an attempted block successfully}
#' \item{att_sv_low_left}{a shot that is saved in the low, left part of the goal}
#' \item{att_rf_target}{right-footed shots that were saved by the goalkeeper}
#' \item{challenge_lost}{challenge that did not make contact, i.e. a missed challenge where the player was dribbled past}
#' \item{att_goal_low_right}{a goal in the bottom right of the goal}
#' \item{att_lf_goal}{goal from a left-footed shot}
#' \item{big_chance_missed}{a clear-cut scoring opportunity which was not converted / scored}
#' \item{goal_minutes}{minutes in which player scores, separated by commas}
#' \item{att_assist_setplay}{number of indirect free kicks attempted}
#' \item{won_contest}{total dribbles where a team player beats an opponent }
#' \item{goal_assist_openplay}{goal assist from an open play situation}
#' \item{goal_assist_setplay}{a goal assist from a corner, free kick or throw-in, where the assist itself may be several passes after the set play in question.}
#' \item{goal_assist_intentional}{qualifier for an assist to confirm that the assisting player had a direct intention to set up a goal attempt}
#' \item{goal_assist}{player assists a goal by passing the ball to the player who scored the goal}
#' \item{total_corners_intobox}{total corners that reached the box – includes long balls if the corner kick is passed greater than 35 yards}
#' \item{att_bx_left}{shot from the left side of the box}
#' \item{goal_assist_deadball}{assist directly from a corner or free kick}
#' \item{accurate_freekick_cross}{a ball played into the box directly from a free kick that successfully found a team-mate}
#' \item{total_contest}{a dribble past a player attempted (contests always involve 2 players) – doesn’t include ‘overrun’ situations where the attacking player takes on an opponent but the ball runs away from them out of play or to an opponent}
#' \item{accurate_corners_intobox}{accurate corner distributions into the box – can include long balls if the corner kick is passed further than 35 yards}
#' \item{corner_taken}{player takes a corner}
#' \item{att_miss_left}{attempt on goal that miss left}
#' \item{att_cmiss_left}{shot that misses within 0.5 meters to the left of the goal}
#' \item{att_obox_target}{shot from outside the box that was saved by the goalkeeper}
#' \item{att_ibox_miss}{attempts off target from shots inside the box}
#' \item{hand_ball}{number of hand balls}
#' \item{total_through_ball}{total passes splitting the defense for a teammate to run on to}
#' \item{att_bx_right}{shot from the right of the box}
#' \item{att_sv_low_right}{a shot that is saved in the low, right part of the goal}
#' \item{six_yard_block}{a shot blocked from an attempt inside the six-yard box}
#' \item{att_ibox_post}{post/crossbar hit from a shot inside the box}
#' \item{att_goal_low_centre}{a goal in the bottom center of the goal}
#' \item{att_freekick_total}{total shots from direct free kicks}
#' \item{att_miss_high_left}{attempt that misses - over the crossbar and left}
#' \item{post_scoring_att}{shot on goal which hits the post}
#' \item{att_rf_goal}{right-footed goals}
#' \item{big_chance_scored}{a goal scored from a clear-cut chance}
#' \item{att_cmiss_high_left}{shot that misses within 0.5 meters over the crossbar and left}
#' \item{att_ibox_blocked}{shot attempt from inside the box that is blocked (excludes any shots saved/cleared off the line in a defensive act)}
#' \item{att_hd_miss}{a headed attempt off target}
#' \item{hit_woodwork}{total number of occasions the ball hits the post in any situation (includes blocked onto or saved, but not goals)}
#' \item{att_post_left}{a shot that hits the left post}
#' \item{diving_save}{combination of ALL diving saves and catches, including saves where the ball ends up still in danger in the possession of an attacking player}
#' \item{goals_conceded}{number of goals conceded}
#' \item{dive_catch}{goalkeeper dives and catches the shot}
#' \item{total_high_claim}{total number of high claims by goalkeeper}
#' \item{error_lead_to_goal}{a mistake which leads to the opposition scoring}
#' \item{dive_save}{goalkeeper dives and parries/deflects the ball to a safe area}
#' \item{goals_conceded_ibox}{goal conceded from a shot inside the box}
#' \item{good_high_claim}{goalkeeper catches a cross}
#' \item{stand_catch}{goalkeeper saves a shot by standing and catching}
#' \item{saved_ibox}{shot saved from shot inside the box}
#' \item{interceptions_in_box}{interception made within the penalty area}
#' \item{total_offside}{offside total}
#' \item{att_miss_high}{attempt that misses - over the crossbar}
#' \item{att_freekick_miss}{total shots missed from freekicks}
#' \item{att_lg_centre}{shot center outside box (more than 35 yards)}
#' \item{total_flick_on}{total number of passes (successful or unsuccessful) which are “flicked” on to a running team-mate - usually a header}
#' \item{yellow_card}{total yellow cards}
#' \item{effective_head_clearance}{a successful defensive clearance via a header – where a player under pressure heads the ball clear of the defensive zone or/and out of play}
#' \item{head_clearance}{clearance via a header}
#' \item{att_sv_high_left}{a shot that is saved in the top left of the goal}
#' \item{yc}{minute yellow card is given}
#' \item{att_miss_high_right}{attempt that misses - over the crossbar and right}
#' \item{att_sv_high_centre}{shot that is saved in the top center part of the goal}
#' \item{accurate_flick_on}{total number of passes which are “flicked” on and successfully find a team-mate – usually a header}
#' \item{accurate_layoffs}{a successful pass by a striker who has received the ball with her back to goal and then plays the ball back towards team-mates}
#' \item{att_cmiss_right}{a shot that misses within 0.5 meters to the right of the goal}
#' \item{overrun}{a player attempts a dribble but hits the ball too far ahead and loses it}
#' \item{total_layoffs}{total passes by a striker who has received the ball with her back to goal and then plays the ball back towards team-mates}
#' \item{att_freekick_target}{a direct free kick saved by the goalkeeper}
#' \item{total_pull_back}{an attacking player reaches the byline and passes the ball in a backwards direction (successful or unsuccessful)}
#' \item{att_lf_target}{left-footed shot that was saved by the goalkeeper}
#' \item{accurate_through_ball}{accurate passes that leave a player one-on-one with the goalkeeper}
#' \item{clearance_off_line}{clearance/blocked shot off the line}
#' \item{att_post_high}{a shot that hits the crossbar}
#' \item{goals_conceded_obox}{goal conceded from a shot outside the box}
#' \item{att_sv_high_right}{a shot that is saved in the top right of the goal}
#' \item{att_obxd_right}{total shots from outside the box to the right adjacent to the penalty area}
#' \item{att_cmiss_high_right}{shot that misses within 0.5 meters over the crossbar and right}
#' \item{att_cmiss_high}{shot that misses within 0.5 meters over the crossbar}
#' \item{att_goal_low_left}{a goal in the bottom left of the goal}
#' \item{assist_attempt_saved}{a shot saved by the goalkeeper but scored on rebound}
#' \item{att_obox_goal}{goal from a shot outside the box}
#' \item{error_lead_to_shot}{a mistake which leads to an opposition shot}
#' \item{second_goal_assist}{a pass to create an opportunity for another player to assist a goal}
#' \item{att_goal_high_right}{a goal in the top right of the goal}
#' \item{penalty_faced}{goalkeeper faced a penalty kick}
#' \item{pen_goals_conceded}{penalty goal conceded (and scored) against the team in question}
#' \item{penalty_conceded}{penalty awarded against the team in question (including handballs) - differs from "pen_goals_conceded" in that the penalty kick has been conceded but the opposition may or may not have scored the penalty}
#' \item{att_obx_right}{total shots from outside the box, on the right (less than 35 yards out)}
#' \item{att_pen_goal}{penalty goal}
#' \item{att_goal_high_left}{a goal in the top left of the goal}
#' \item{assist_penalty_won}{an assist assigned to a player who wins a penalty which is taken and scored by a team-mate}
#' \item{penalty_won}{player fouled within the penalty box (excludes any penalties won for handball)}
#' \item{gk_smother}{goalkeeper successfully takes possession by diving down to collect a loose ball that a striker is chasing}
#' \item{punches}{goalkeeper punches the ball clear from a high ball}
#' \item{cross_not_claimed}{goalkeeper tries to catch a cross but misses the ball}
#' \item{own_goals}{total own goals conceded}
#' \item{stand_save}{goalkeeper saves a shot by standing and deflecting/parrying}
#' \item{att_obox_post}{shot from outside the box that hit the post}
#' \item{second_yellow}{second yellow card given}
#' \item{red_card}{if player received a red card}
#' \item{y_2_c}{time of second yellow card}
#' \item{att_freekick_post}{a direct free kick that hits the post}
#' \item{att_one_on_one}{a shot attempt where the attacker was in a one-on-one situation against the goalkeeper}
#' \item{att_pen_post}{a penalty that hits the post}
#' \item{att_post_right}{a shot that hits the right post}
#' \item{att_obxd_left}{total shots from outside the box to the left adjacent to the penalty area}
#' \item{att_hd_post}{a headed attempt that hits the woodwork}
#' \item{dangerous_play}{foul for play which could cause serious injury to an opponent}
#' \item{foul_throw_in}{throw-in taken incorrectly}
#' \item{att_lg_left}{shot left outside box (more than 35 yards)}
#' \item{att_fastbreak}{shot resulting from a counter-attack}
#' \item{shot_fastbreak}{shots made following a fast break situation}
#' \item{total_fastbreak}{total number of fast breaks that occurred}
#' \item{att_obx_left}{total shots from outside the box to the left (less that 35 yards)}
#' \item{accurate_pull_back}{an attacking player reaches the byline and successfully passes the ball in a backwards direction to a team-mate}
#' \item{att_freekick_goal}{goal from a direct free kick}
#' \item{assist_free_kick_won}{a foul won that leads to a direct free kick scored}
#' \item{assist_blocked_shot}{a shot blocked by a defender and scored on the rebound}
#' \item{assist_handball_won}{a player forces a handball which results in a free kick scored}
#' \item{last_man_tackle}{a player makes a defensive action/tackle and is the last person between the opponent and the goal}
#' \item{attempts_ibox}{total shots that are inside the box}
#' \item{attempts_obox}{total shots that are outside the box}
#' \item{att_pen_miss}{a penalty shot that goes wide of the goal or over the crossbar}
#' \item{assist_pass_lost}{a heavily deflected pass}
#' \item{goal_fastbreak}{goals scored from a fast break situation}
#' \item{att_obp_goal}{goal scored with other body part}
#' \item{rc}{time in which red card is given}
#' \item{assist_post}{a shot that hits the woodwork and is scored on rebound}
#' \item{penalty_save}{penalty save made}
#' \item{att_pen_target}{penalty that was saved by the goalkeeper}
#' \item{assist_own_goal}{a player shoots or passes, forcing a defender to put the ball in his own goal}
#' \item{back_pass}{free kick for passing back to goalkeeper}
#' \item{att_lg_right}{shot right outside box (more than 35 yards)}
#' \item{formation_place_1}{place in formation, if subbed in}
#' \item{att_corner}{shot that came after a corner was taken}
#' }
#'
#'  @source \url{https://winsports.dayscript.com/docs/database/match_player_stats}
#'
"adv_player_stats"


