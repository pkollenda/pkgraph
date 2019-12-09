"
Themes:
theme_minimal()
cowplot::theme_minimal_grid / also ..._hgrid and ..._vgrid

theme() can adjust many things:
no legend -> legend.position = 'none'
change axis title -> axis.title.x = element_blank()

Color Palettes:
# Suited for color blindness
colorblindr::palette_OkabeIto()
viridis::inferno()

# Good greys


Cool Geoms:

...


"

#
# sdg <- read_csv("/Users/pkollenda/Documents/Lernen/Fun Data Projects/Financing to the SDGs/finance_sdg.csv") %>% select(ID = aiddata_id, year:recipient, amount = commitment_amount_usd_constant) %>% mutate_at(vars(year:recipient), factor)
# emperors <- read_csv("/Users/pkollenda/Downloads/designing_ggplots-master/data/emperors.csv")
#
# # Show as percentage, not absolute, without calculating this in the tibble beforehand...
# my_barchart <- function(
#   data,
#   count, group, highlight_variable = NA,
#   ordered = "alphabetically", first_group = NA, flipped = TRUE, labelled = FALSE, show_percent = NA,
#   label_nudge_y = -(max(data %>% select({{count}})) / 100 * 2), label_nudge_x = 0, label_size = 3, label_color = "white", label_hjust = "right",
#   axis.title.x = element_blank(), axis.title.y = element_blank(),
#   title = element_blank(),
#   legend.position = "none",
#   fontsize = 16) {
#
#   # 0) Prepare data
#   # If flipped, order for alphabetical needs to be reversed, such that a is on top.
#   if(ordered == "alphabetically" & flipped == T){data <- data %>% mutate({{group}} := fct_rev({{group}}))}
#   # . Order by frequency?
#   if(ordered == "count") {data <- data %>% arrange({{count}}) %>% mutate({{group}} := fct_inorder(fct_drop({{group}})))}
#   # . Order one in front, rest either frequency (see above) or alphabetically
#   if(!missing(first_group) & flipped == F) {data <- data %>% mutate({{group}} := fct_relevel({{group}}, first_group))} else
#     if(!missing(first_group) & flipped == T) {data <- data %>% mutate({{group}} := fct_relevel({{group}}, rev(first_group), after = Inf))}
#
#
#   # 1) Start by specifying the mappings that should hold for all geoms.
#   p <- ggplot(data = data, aes(x = {{group}}, y = {{count}}))
#
#   # 2) Add all the relevant geoms that I want to have.
#   # . Add geom_col for column, bar chart
#   p <- p + geom_col()
#
#   # . Add geom_text to label the bars with the number of observations, if desired.
#   if(labelled){ p <- p + geom_text(aes(label = n, y = n), nudge_y = label_nudge_y, nudge_x = label_nudge_x,
#                                    size = label_size, hjust = label_hjust, color = label_color)}
#
#   # 3) Add highlighted variable if desired.
#   if(!missing(highlight_variable)){
#     p <- p + aes(fill = {{highlight_variable}}) + scale_fill_manual(name = NULL, values = c("#B0B0B0D0", "#D55E00D0"))
#     }
#
#   # 4) Flip the coordinate system, almost always desired for column bar plots.
#   if(flipped){ p <- p + coord_flip()
#     # # With flipped coordinate system, alphatically ordered factors have to be changed
#     # p <- p + scale_x_discrete(limits = rev(levels(data$group)))
#     # Rename x and y axis for better intuitive handling.
#     temp = axis.title.x; axis.title.x = axis.title.y; axis.title.y = temp; rm(temp);
#     }
#
#   # 5) Adjust (if desired) the scales.
#   p <- p + scale_x_discrete(labels = scales::wrap_format(width = 16))
#
#   # 6) Add all the labels.
#   p <- p + labs(
#     title = title, x = axis.title.x, y = axis.title.y)
#
#
#   # 7) Set and adjust the main theme.
#   p <- p + cowplot::theme_minimal_vgrid(font_size = fontsize)
#   p <- p + theme(legend.position = legend.position)
#
#   return(p)
# }
#
# my_barchart(data = sdg %>% count(donor) %>% filter(n > 30000) %>% mutate(highlight = donor == "Germany"), count = n, group = donor, ordered = "count", first_group = "Germany", flipped = T)
# my_barchart(data = emperors %>% count(cause) %>% mutate(highlight = cause == "Suicide"), first_group = c("Unknown", "Suicide"), ordered = "count", axis.title.x = "Hi", flipped = T, highlight_variable = highlight, count = n, group = cause)

