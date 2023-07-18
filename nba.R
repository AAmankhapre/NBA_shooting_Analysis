library(BasketballAnalyzeR)
PbP <- PbPmanipulation(PbP.BDB)
subdata <- subset(PbP, player=="Stephen Curry")
subdata$xx <- subdata$original_x/10
subdata$yy <- subdata$original_y/10-41.75

summary(PbP.BDB)
str(PbP.BDB)
dim(PbP.BDB)
nrow(PbP.BDB)
ncol(PbP.BDB)
PbP.BDB[1:3]
names(PbP.BDB)
PbP.BDB["player"]
PbP.BDB[7,]
head(PbP.BDB,n=4)
tail(PbP.BDB,n=2)
PbP.BDB$points = ifelse(is.na(PbP.BDB$points),ave(PbP.BDB$points,
                                                  FUN = function(x)mean(x,na.rm = TRUE)),PbP.BDB$points)
PbP.BDB$outof = ifelse(is.na(PbP.BDB$outof),ave(PbP.BDB$outof,
                                                  FUN = function(x)mean(x,na.rm = TRUE)),PbP.BDB$outof)
PbP.BDB$num = ifelse(is.na(PbP.BDB$num),ave(PbP.BDB$num,
                                                  FUN = function(x)mean(x,na.rm = TRUE)),PbP.BDB$num)
shotchart(data=subdata, x="xx", y="yy", scatter = T,
          pt.col = 'blue',
          bg.col = 'pink')

shotchart(data=subdata, x="xx", y="yy", scatter = T,
          z='result', bg.col = 'black',
          courtline.col = 'white',
          palette = 'hot')
shotchart(data=subdata, x="xx", y="yy", scatter = T,
          num.sect = 5,
          type = 'sectors',
          z='playlength')
shotchart(data=subdata, x="xx", y="yy", scatter = T,
          num.sect = 5,
          type = 'sectors',
          z='playlength',
          result = 'result')
