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
#' \item{leftside_pass}{number of passes originating on left side of the field}
#' \item{poss_won_att_3_rd}{possession won in the attacking third of the field}
#' \item{dispossessed}{a player in possession of the ball has the ball taken (tackle)}
#' \item{accurate_keeper_sweeper}{number of times a goalkeeper anticipates danger and rushes off their line to try to either cut out an attacking pass (in a race with the opposition player) or to close-down an opposing player}
#' \item{accurate_cross}{ball played from a wide position intending to reach a teammate in a specific area in front of the goal}
#' \item{att_rf_total}{}
#' \item{att_bx_right}{}
#' \item{six_yard_block}{blocks in the six yard box}
#' \item{accurate_pass}{passes completed from one player to another}
#' \item{won_tackle}{number of tackles won}
#' \item{att_assist_setplay}{}
#' \item{att_goal_high_centre}{attempts that result in goal, placement high center}
#' \item{att_miss_left}{attempts on goal that miss left}
#' \item{total_final_third_passes}{sum of final third passes}
#' \item{rightside_pass}{number of passes originating on right side of the field}
#' \item{attempts_conceded_ibox}{attempts on goal conceded in box}
#' \item{touches}{a sum of all events where a player touches the ball}
#' \item{total_fwd_zone_pass}{}
#' \item{att_assist_openplay}{}
#' \item{won_contest}{}
#' \item{goals_openplay}{goals scored in open play}
#' \item{accurate_fwd_zone_pass}{}
#' \item{total_chipped_pass}{total number of chipped passes}
#' \item{lost_corners}{}
#' \item{fouled_final_third}{number of fouls in the final third}
#' \item{saves}{total number of saves by the goalkeeper}
#' \item{ontarget_scoring_att}{scoring attempts on target}
#' \item{total_scoring_att}{total number of scoring attempts}
#' \item{blocked_pass}{blocked passes}
#' \item{attempts_conceded_obox}{}
#' \item{ball_recovery}{}
#' \item{subs_made}{number of substitutions made}
#' \item{att_ibox_post}{}
#' \item{poss_won_def_3_rd}{possession won in defensive third}
#' \item{accurate_back_zone_pass}{}
#' \item{att_cmiss_left}{}
#' \item{att_goal_low_centre}{}
#' \item{goal_assist_openplay}{}
#' \item{passes_right}{}
#' \item{total_throws}{}
#' \item{att_obox_target}{}
#' \item{successful_open_play_pass}{}
#' \item{goal_assist_setplay}{}
#' \item{total_back_zone_pass}{}
#' \item{total_long_balls}{}
#' \item{att_hd_goal}{}
#' \item{accurate_keeper_throws}{}
#' \item{att_obx_centre}{}
#' \item{att_openplay}{}
#' \item{poss_won_mid_3_rd}{}
#' \item{put_through}{}
#' \item{big_chance_created}{}
#' \item{att_ibox_target}{}
#' \item{freekick_cross}{}
#' \item{att_freekick_total}{}
#' \item{goal_kicks}{}
#' \item{att_lf_total}{}
#' \item{open_play_pass}{}
#' \item{goal_assist_intentional}{}
#' \item{aerial_won}{}
#' \item{goal_assist}{}
#' \item{total_pass}{total number of passes}
#' \item{midfielder_goals}{}
#' \item{total_launches}{}
#' \item{fwd_pass}{}
#' \item{effective_blocked_cross}{}
#' \item{outfielder_block}{}
#' \item{att_miss_high_left}{}
#' \item{goals}{}
#' \item{touches_in_opp_box}{}
#' \item{total_corners_intobox}{}
#' \item{blocked_cross}{}
#' \item{att_miss_right}{}
#' \item{att_bx_centre}{}
#' \item{post_scoring_att}{}
#' \item{ontarget_att_assist}{}
#' \item{long_pass_own_to_opp}{}
#' \item{att_ibox_goal}{}
#' \item{accurate_chipped_pass}{}
#' \item{duel_won}{}
#' \item{total_keeper_sweeper}{}
#' \item{successful_final_third_passes}{}
#' \item{att_rf_goal}{}
#' \item{shield_ball_oop}{}
#' \item{fk_foul_won}{}
#' \item{total_cross_nocorner}{}
#' \item{keeper_throws}{}
#' \item{att_bx_left}{}
#' \item{successful_put_through}{}
#' \item{total_tackle}{}
#' \item{att_sv_low_left}{}
#' \item{passes_left}{}
#' \item{big_chance_scored}{}
#' \item{att_rf_target}{}
#' \item{att_cmiss_high_left}{}
#' \item{accurate_launches}{}
#' \item{poss_lost_all}{}
#' \item{att_sv_low_centre}{}
#' \item{accurate_long_balls}{}
#' \item{challenge_lost}{}
#' \item{total_cross}{}
#' \item{att_goal_low_right}{}
#' \item{clean_sheet}{}
#' \item{att_obox_blocked}{}
#' \item{att_ibox_miss}{}
#' \item{accurate_goal_kicks}{}
#' \item{saved_obox}{}
#' \item{unsuccessful_touch}{}
#' \item{shot_off_target}{}
#' \item{forward_goals}{}
#' \item{poss_lost_ctrl}{}
#' \item{hand_ball}{}
#' \item{goal_assist_deadball}{}
#' \item{att_ibox_blocked}{}
#' \item{aerial_lost}{}
#' \item{att_sv_low_right}{}
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
#' \item{att_setpiece}{}
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
#' \item{goals_conceded}{}
#' \item{att_lg_centre}{}
#' \item{total_high_claim}{}
#' \item{error_lead_to_goal}{}
#' \item{goals_conceded_ibox}{}
#' \item{interceptions_in_box}{}
#' \item{total_offside}{}
#' \item{good_high_claim}{}
#' \item{saved_ibox}{}
#' \item{att_miss_high}{}
#' \item{att_sv_high_centre}{}
#' \item{effective_head_clearance}{}
#' \item{accurate_flick_on}{}
#' \item{accurate_layoffs}{}
#' \item{total_yellow_card}{}
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
