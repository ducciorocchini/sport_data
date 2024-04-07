# pairs on sport table

library(ggplot2)

# data: copy paste in kwrite Anno, Km. Min. (second sheet)
res <- read.table("clipboard", sep="\t", h=T)
pairs(res) 

plot(res[[1]], res[[2]])

# focus data
f.Anno <- 1974
# f.Velo <- 5.39 # march 24th
f.Velo <- 6.16 # april 7th

# ggplot
ggplot(res, aes(x=res[[1]], y=res[[2]])) +
    geom_point(alpha=0.3) + 
    scale_size_manual(values=2) + 
    labs(x = "Anno di nascita") +
    labs(y = "Km. min.") +
    geom_point(aes(x=f.Anno,y=f.Velo),colour="red",size=5)


