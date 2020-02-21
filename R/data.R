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
#' \item{game_id}{unique game id in the follow format: "home-team-vs-away-team_YYYY-MM-DD}
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
#' \item{att_cmiss_left}{shot that misses within 0.5 metres to the left of the goal}
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
#' \item{att_cmiss_high_left}{shot that misses within 0.5 metres over the crossbar and left}
#' \item{accurate_launches}{long ball played forward without an obvious target but successfully finds a team-mate}
#' \item{poss_lost_all}{total losses of possession}
#' \item{att_sv_low_centre}{a shot that is saved in the bottom centre part of the goal}
#' \item{accurate_long_balls}{accurate passes further than 35 yards (excluding throw-ins, crosses, keeper throws)}
#' \item{challenge_lost}{challenge that did not make contact, i.e. a missed challenge where the player was dribbled past}
#' \item{total_cross}{total number of crosses (via corners, open play and set pieces)}
#' \item{att_goal_low_right}{a goal in the bottom right of the goal}
#' \item{clean_sheet}{no goals conceded in the game (player must play 90 minutes)}
#' \item{att_obox_blocked}{shot from outside the box that is blocked before reaching the goal }
#' \item{att_ibox_miss}{}
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
#' \item{crosses_18_yard}{}
#' \item{final_third_entries}{}
#' \item{att_hd_total}{}
#' \item{accurate_cross_nocorner}{}
#' \item{effective_clearance}{}
#' \item{fk_foul_lost}{}
#' \item{att_hd_miss}{}
#' \item{won_corners}{}
#' \item{possession_percentage}{}
#' \item{interception}{}
#' \item{attempted_tackle_foul}{}
#' \item{backward_pass}{}
#' \item{first_half_goals}{}
#' \item{interception_won}{}
#' \item{pen_area_entries}{}
#' \item{att_lf_goal}{}
#' \item{accurate_throws}{}
#' \item{big_chance_missed}{}
#' \item{accurate_freekick_cross}{}
#' \item{att_hd_target}{}
#' \item{total_contest}{}
#' \item{hit_woodwork}{}
#' \item{total_clearance}{}
#' \item{long_pass_own_to_opp_success}{}
#' \item{accurate_corners_intobox}{}
#' \item{total_att_assist}{}
#' \item{att_post_left}{}
#' \item{att_setpiece}{number of set pieces attempted}
#' \item{offtarget_att_assist}{}
#' \item{att_obox_miss}{}
#' \item{corner_taken}{}
#' \item{crosses_18_yardplus}{}
#' \item{formation_used}{}
#' \item{total_shots}{}
#' \item{passing_accuracy}{}
#' \item{shot_faced}{}
#' \item{shots_on_goal}{}
#' \item{total_flick_on}{}
#' \item{diving_save}{}
#' \item{att_freekick_miss}{}
#' \item{goals_conceded}{number of goals conceded}
#' \item{att_lg_centre}{}
#' \item{total_high_claim}{}
#' \item{error_lead_to_goal}{}
#' \item{goals_conceded_ibox}{}
#' \item{interceptions_in_box}{}
#' \item{total_offside}{offside total}
#' \item{good_high_claim}{}
#' \item{saved_ibox}{}
#' \item{att_miss_high}{}
#' \item{att_sv_high_centre}{}
#' \item{effective_head_clearance}{}
#' \item{accurate_flick_on}{}
#' \item{accurate_layoffs}{}
#' \item{total_yellow_card}{total yellow cards}
#' \item{head_clearance}{}
#' \item{att_lf_target}{}
#' \item{att_cmiss_right}{}
#' \item{att_sv_high_left}{}
#' \item{att_freekick_target}{}
#' \item{overrun}{}
#' \item{total_layoffs}{}
#' \item{total_pull_back}{}
#' \item{att_miss_high_right}{}
#' \item{accurate_through_ball}{}
#' \item{clearance_off_line}{}
#' \item{att_post_high}{}
#' \item{att_cmiss_high}{}
#' \item{att_goal_low_left}{}
#' \item{att_sv_high_right}{}
#' \item{att_obxd_right}{}
#' \item{pts_gained_losing_pos}{}
#' \item{att_cmiss_high_right}{}
#' \item{goals_conceded_obox}{}
#' \item{att_obox_goal}{}
#' \item{pts_dropped_winning_pos}{}
#' \item{error_lead_to_shot}{}
#' \item{att_goal_high_right}{}
#' \item{penalty_conceded}{}
#' \item{penalty_faced}{}
#' \item{att_obx_right}{}
#' \item{pen_goals_conceded}{}
#' \item{att_pen_goal}{}
#' \item{att_goal_high_left}{}
#' \item{penalty_won}{}
#' \item{punches}{}
#' \item{own_goal_accrued}{}
#' \item{att_ibox_own_goal}{}
#' \item{own_goals}{}
#' \item{att_obox_post}{}
#' \item{second_yellow}{}
#' \item{total_red_card}{}
#' \item{defender_goals}{}
#' \item{att_one_on_one}{}
#' \item{att_freekick_post}{}
#' \item{att_pen_post}{}
#' \item{att_post_right}{}
#' \item{contentious_decision}{}
#' \item{att_obxd_left}{}
#' \item{att_hd_post}{}
#' \item{foul_throw_in}{}
#' \item{att_lg_left}{}
#' \item{att_fastbreak}{}
#' \item{shot_fastbreak}{}
#' \item{total_fastbreak}{}
#' \item{att_obx_left}{}
#' \item{accurate_pull_back}{}
#' \item{att_freekick_goal}{}
#' \item{last_man_tackle}{}
#' \item{attempts_obox}{}
#' \item{attempts_ibox}{}
#' \item{att_pen_miss}{}
#' \item{goal_fastbreak}{}
#' \item{att_obp_goal}{}
#' \item{penalty_save}{}
#' \item{att_pen_target}{}
#' \item{att_lg_right}{}
#' \item{att_corner}{}
#' }
#'
"adv_team_stats"
