# pairs on sport table

library(ggplot2)

# data: copy paste in kwrite Anno, Km. Min. (second sheet)
res <- read.table("clipboard", sep="\t", h=T)
pairs(res) 

plot(res[[1]], res[[2]])

# focus data
f.Anno <- 1974
f.Velo <- 5.39
points(f.Anno, f.Velo, pch=19)

# ggplot
ggplot(res, aes(x=res[[1]], y=res[[2]]), xlab("Anno di nascita"), ylab("Km. min."), pch=19) +
    geom_point(alpha=0.3) + 
    scale_size_manual(values=2)
    
points(f.Anno, f.Velo, pch=19, col="red")

# apr 7th
f.Velo <- 6.04

