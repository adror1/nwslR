#Functions for extracting shot on goal locations, shot locations, etc.

library(tidyverse)

#Some basic code to get action data
#CSV file, I can share that too, if needed
pbpdata = read.csv("NWSLpbpdata.csv", stringsAsFactors = F)

#extract actions (kinda like a description of the play
pbpdata$action <- str_extract(pbpdata$result.comment,"\\..*")
pbpdata$action <- str_replace(pbpdata$action,".","")
pbpdata$action <- str_squish(pbpdata$action)

#Blank actions is no data in the result.comment field
for (i in 1:nrow(pbpdata)) {
if (nchar(pbpdata$action[i])==0) {
  pbpdata$action[i] = pbpdata$result.comment[i]
}
}

#filtered by shots for now just to paint a picture
get_locations <- function(df) {
df = df %>% filter(result.type == "goal" | result.type == "miss" | result.type == "attempt blocked" |
                             result.type == "attempt saved" | result.type == "penalty miss" | result.type == "penalty saved"|
                             result.type == "post")

#add a lot of columns, though there is some difficulty in extracting shots from the right side of the box, for some reason
df = df %>% add_column(assist.type=NA,shot.player.name=NA) %>%
  mutate(assist.player.name=str_extract(action,"Assisted by .*"),
                         assist.type=str_extract(assist.player.name,"with .*"),
                         assist.player.name=str_remove(assist.player.name,"with .*"),
                         assist.type=ifelse(grepl("through ball", assist.type, fixed=TRUE)==TRUE,"through ball",str_remove(assist.type,"with a")),
                         assist.type=str_replace(assist.type,"cross .*","cross"),
                         assist.type=str_remove(assist.type,"\\."),
                         assist.type=str_squish(assist.type),
                         action=ifelse(result.type=="post", result.comment, action),
                         action=str_remove(action,"Assisted by .*"),
                         shot.player.name = sub("\\(.*", "", action),
                         shot.player.name = str_remove(shot.player.name,"Penalty saved!"),
                         shot.player.name = str_squish(shot.player.name),
                         assist.player.name = str_remove(assist.player.name,"Assisted by"),
                         assist.player.name = str_remove(assist.player.name,"\\."),
                         assist.player.name = str_squish(assist.player.name),
                         shot.type = str_extract(action,"left footed shot|right footed shot|header"),
                         shot.loc = str_extract(action,"\\boutside the box\\b|\\bcentre of the box\\b|\\bleft side of the box\\b|
                             \\bright side of the box\\b|\\bvery close range\\b|\\bmore than 35 yards\\b|\\bleft side of the six yard box\\b|
                             \\bdifficult angle on the right\\b|\\bdifficult angle on the left\\b|\\bright side of the six yard box\\b|
                             \\blong range on the right\\b|\\blong range on the left\\b|\\bconverts the penalty\\b"),
                         shot.loc = str_replace(shot.loc,"right side of the six yard box","very close range"),
                         shot.loc = str_replace(shot.loc,"left side of the six yard box","very close range"),
                         shot.loc = str_replace(shot.loc,"long range on the left","outside the box"),
                         shot.loc = str_replace(shot.loc,"difficult angle on the left","left side of the box"),
                         shot.loc = ifelse(result.type=="penalty saved","penalty",
                                 ifelse(result.type=="penalty miss","penalty",shot.loc)),
                         shot.loc = str_replace(shot.loc,"converts the penalty","penalty"),
                         shot.loc = ifelse(str_detect(action,"right side of the box")==TRUE,"right side of the box",shot.loc),
                         sog.loc = str_extract(result.comment,"\\btop right corner\\b|\\bcentre of the goal\\b|\\btop left corner\\b|\\bbottom left corner\\b|\\bbottom right corner\\b"),
                         goal = ifelse(result.type=="goal",1,0),
                         shot = ifelse(result.type=="attempt saved"|result.type=="attempted blocked"|result.type=="miss"|
                                         result.type=="goal",1,0))
}

df %>% #group_by(shot.player.name) %>% 
  filter(shot.loc=="left side of the box",sog.loc=="top right corner"|sog.loc=="bottom right corner") %>% summarise(Goals = sum(goal), Shots = n()) %>% arrange(desc(Shots))

12/143 #RS shot to right
40/103 #RS shot to left
8/147 #RS shot to centre
9/164 #LS shot to centre
17/176 #LS shot to left
52/105 #LS shot to right
40/255 #header to centre
86/217 #header to top corners of goal
55/132 #header to bottom corners of goal


library(ggsoccer)

#Pitch sog plot that requires arguments for get_locations function
pitch_sog_plot <- function(df) {
df = df %>% filter(!is.na(sog.loc))

#first plot of shot locations on the pitch
pitchsog = ggplot(data = df) +
  annotate_pitch(colour = "white",
                 fill =  "chartreuse4",
                 limits = FALSE) +
  theme_pitch() +
  theme(plot.background = element_rect(fill = "black")) +
  coord_flip(xlim = c(49, 101),
             ylim = c(-1, 101)) +
  annotate("rect", xmin = 82.5, xmax = 100, ymin = 63, ymax = 79.5,
           color = "orange", fill = "white", alpha = 0.2) +
  annotate("text",x = 91, y = 71, label = paste0(df %>% filter(shot.loc == "right side of the box", result.type == "goal") %>% tally(),"/",
                                                 df %>% filter(shot.loc == "right side of the box") %>% tally()),
           parse = TRUE) + 
  annotate("rect", xmin = 82.5, xmax = 100, ymin = 21, ymax = 37.5,
           color = "red", fill = "white", alpha = 0.2) + 
  annotate("text",x = 91, y = 29, label = paste0(df %>% filter(shot.loc == "left side of the box", result.type == "goal") %>% tally(),"/",
                                                 df %>% filter(shot.loc == "left side of the box") %>% tally()),
           parse = TRUE) +
  annotate("rect", xmin = 70, xmax = 82.5, ymin = 0, ymax = 100,
           color = "blue", fill = "white", alpha = 0.2) +
  annotate("text",x = 76, y = 50, label = paste0(df %>% filter(shot.loc == "outside the box", result.type == "goal") %>% tally(),"/",
                                                 df %>% filter(shot.loc == "outside the box") %>% tally()),
           parse = TRUE) +
  annotate("rect", xmin = 94, xmax = 100, ymin = 37.5, ymax = 63,
           color = "purple", fill = "white", alpha = 0.2) +
  annotate("text",x = 97, y = 50, label = paste0(df %>% filter(shot.loc == "very close range", result.type == "goal") %>% tally(),"/",
                                                 df %>% filter(shot.loc == "very close range") %>% tally()),
           parse = TRUE) +
  annotate("rect", xmin = 82.5, xmax = 94, ymin = 37.5, ymax = 63,
           color = "black", fill = "white", alpha = 0.2) +
  annotate("text",x = 88, y = 50, label = paste0(df %>% filter(shot.loc == "centre of the box", result.type == "goal") %>% tally(),"/",
                                           df %>% filter(shot.loc == "centre of the box") %>% tally()),
           parse = TRUE) +
  annotate("text",x = 68, y = 50, label = paste0(df %>% filter(shot.loc == "more than 35 yards", result.type == "goal") %>% tally(),"/",
                                                 df %>% filter(shot.loc == "more than 35 yards") %>% tally()),
           parse = TRUE) +
  
  annotate("text",x = 52, y = 73, label = paste0("PKs:",df %>% filter(shot.loc == "penalty", result.type == "goal") %>% tally(),"/",
                                                 df %>% filter(shot.loc == "penalty") %>% tally()),
           parse = TRUE)


#shot on goal theme
goal_theme <- function() {
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        plot.background = element_rect(fill = "chartreuse4"),
        panel.background = element_rect(fill = "chartreuse4"),
        axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),
        legend.background = element_rect(fill = "chartreuse4")
        #legend.position="none"
        )
}
  
 return(pitchsog)

#goal posts
sog_plot <- function(player, shot_type = "all") {
TL = df %>% filter(sog.loc == "top left corner", shot.player.name == {{player}},
                      if(shot_type=="all"){shot.type==shot.type} else if (shot_type=="left"){shot.type == "left footed shot"}
                      else if (shot_type=="right"){shot.type == "right footed shot"} else if (shot_type=="header") {shot.type == "header"
                      } else if (shot_type=="both"){shot.type %in% c("right footed shot", "left footed shot")}) %>% summarise(PCT = round(sum(goal)/n(),3), Shots = n()) %>% mutate(xmin = 30, xmax = 76, ymin = 3.5, ymax = 7, xlab = 53, ylab = 5, xtext = 53, ytext = 4)
TR = df %>% filter(sog.loc == "top right corner", shot.player.name == {{player}},
                      if(shot_type=="all"){shot.type==shot.type} else if (shot_type=="left"){shot.type == "left footed shot"}
                      else if (shot_type=="right"){shot.type == "right footed shot"} else if (shot_type=="header") {shot.type == "header"
                      } else if (shot_type=="both"){shot.type %in% c("right footed shot", "left footed shot")}) %>% summarise(PCT = round(sum(goal)/n(),3), Shots = n()) %>% mutate(xmin = 124, xmax = 170, ymin = 3.5, ymax = 7, xlab = 147, ylab = 5, xtext = 147, ytext = 4)
C = df %>% filter(sog.loc == "centre of the goal", shot.player.name == {{player}},
                     if(shot_type=="all"){shot.type==shot.type} else if (shot_type=="left"){shot.type == "left footed shot"}
                     else if (shot_type=="right"){shot.type == "right footed shot"} else if (shot_type=="header") {shot.type == "header"
                     } else if (shot_type=="both"){shot.type %in% c("right footed shot", "left footed shot")}) %>% summarise(PCT = round(sum(goal)/n(),3), Shots = n()) %>% mutate(xmin = 76, xmax = 124, ymin = 0, ymax = 7, xlab = 100, ylab = 3.5, xtext = 100, ytext = 2.5) 
BL = df %>% filter(sog.loc == "bottom left corner", shot.player.name == {{player}},
                      if(shot_type=="all"){shot.type==shot.type} else if (shot_type=="left"){shot.type == "left footed shot"}
                      else if (shot_type=="right"){shot.type == "right footed shot"} else if (shot_type=="header") {shot.type == "header"
                      } else if (shot_type=="both"){shot.type %in% c("right footed shot", "left footed shot")}) %>% summarise(PCT = round(sum(goal)/n(),3), Shots = n()) %>% mutate(xmin = 30, xmax = 76, ymin = 0, ymax = 3.5, xlab = 53, ylab = 1.75, xtext = 53, ytext = 0.75)
BR = df %>% filter(sog.loc == "bottom right corner", shot.player.name == {{player}},
                      if(shot_type=="all"){shot.type==shot.type} else if (shot_type=="left"){shot.type == "left footed shot"}
                      else if (shot_type=="right"){shot.type == "right footed shot"} else if (shot_type=="header") {shot.type == "header"
                      } else if (shot_type=="both"){shot.type %in% c("right footed shot", "left footed shot")}) %>% summarise(PCT = round(sum(goal)/n(),3), Shots = n()) %>% mutate(xmin = 124, xmax = 170, ymin = 0, ymax = 3.5, xlab = 147, ylab = 1.75, xlab = 147, xtext= 147, ytext = 0.75)

Locs = rbind(TL,TR,C,BL,BR)

sogplot = ggplot(Locs, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax)) +
  geom_rect(aes(fill = PCT)) +
  geom_label(aes(x=xlab,y=ylab, label = PCT)) + 
  geom_text(aes(x=xtext,y=ytext, label = Shots)) +
  scale_fill_gradient(low = paste(LColors$secondary[1]), high = paste(LColors$primary[1])) +
  annotate("segment", x = 30, xend = 30, y = 0, yend = 7,
           colour = "black", size = 1) +
  annotate("segment", x = 170, xend = 170, y = 0, yend = 7,
           colour = "black", size = 1) +
  annotate("segment", x = 30, xend = 170, y = 7, yend = 7,
           colour = "black", size = 1) +
  annotate("segment", x = 0, xend = 200, y = 0, yend = 0,
           colour = "black", size = 1) +
  annotate("segment", x = 30, xend = 76, y = 3.5, yend = 3.5,
           colour = "black", size = 1) +
  annotate("segment", x = 124, xend = 170, y = 3.5, yend = 3.5,
           colour = "black", size = 1) +
  #annotation_custom(img, xmin = 90, xmax = 110, ymin = 13, ymax = 13) +
  annotate("text",x=100,y=12, label = paste0({{player}})) +
  annotate("text",x=100,y=10, label = "Shot On Goal Data 2016-2019 (Striker's perspective)") +
  ylim(0,15) +
  goal_theme()
  
  return(sogplot)
}

#Example of sog_plot function
sog_plot("Samantha Kerr","both")
