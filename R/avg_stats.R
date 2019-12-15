globalVariables(c("fieldplayer_overall_season_stats", "person_id", "season", "mp",
                  "starts", "min", "gls", "ast", "pk", "p_katt", "crd_y", "crd_r",
                  "goalkeeper_season_stats", "ga", "ga_90", "so_ta", "saves",
                  "save_pct", "w", "d", "l", "cs", "cs_pct"))

#' Averages statistics for field players throughout their careers
#' @import dplyr
#' @export
avg_field_stats <- function() {
    avg_fieldplayer_stats <- fieldplayer_overall_season_stats %>%
      group_by(person_id) %>%
      summarise(seasons_played = length(season),
                mp = mean(mp, na.rm = TRUE),
                starts = mean(starts, na.rm = TRUE),
                min = mean(min, na.rm = TRUE),
                gls = mean(gls, na.rm = TRUE),
                ast = mean(ast, na.rm = TRUE),
                pk = mean(pk, na.rm = TRUE),
                p_katt = mean(p_katt, na.rm = TRUE),
                crd_y = mean(crd_y, na.rm = TRUE),
                crd_r = mean(crd_r, na.rm = TRUE)
                ) %>%
      mutate_all(~replace(., is.nan(.), 0)) %>%
      mutate_at(c("mp", "starts", "min", "gls", "ast", "pk", "p_katt", "crd_y", "crd_r"), ~round(., 3))
}

#' Averages statistics for goalkeepers throughout their careers
#' @export
avg_gk_stats <- function() {
  avg_goalkeeper_stats <- goalkeeper_season_stats %>%
    group_by(person_id) %>%
    summarise(seasons_played = length(season),
              mp = mean(mp, na.rm = TRUE),
              starts = mean(starts, na.rm = TRUE),
              min = mean(min, na.rm = TRUE),
              ga = mean(ga, na.rm = TRUE),
              ga_90 = mean(ga_90, na.rm = TRUE),
              so_ta = mean(so_ta, na.rm = TRUE),
              saves = mean(saves, na.rm = TRUE),
              save_pct = mean(save_pct, na.rm = TRUE),
              w = mean(w, na.rm = TRUE),
              d = mean(d, na.rm = TRUE),
              l = mean(l, na.rm = TRUE),
              cs = mean(cs, na.rm = TRUE),
              cs_pct = mean(cs_pct, na.rm = TRUE),
              crd_y = mean(crd_y, na.rm = TRUE),
              crd_r = mean(crd_r, na.rm = TRUE)) %>%
    mutate_all(~replace(., is.nan(.), 0)) %>%
    mutate_at(c("mp", "starts", "min", "ga", "ga_90", "so_ta", "saves", "save_pct", "w", "d", "l",
                "cs", "cs_pct", "crd_y", "crd_r"), ~round(., 3))
}
