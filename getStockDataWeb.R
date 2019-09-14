## get stock quotes

library(tseries)
library(xts)

library(BatchGetSymbols)

# set dates
first.date <- Sys.Date() - 550
last.date <- Sys.Date()
freq.data <- 'daily'
# set tickers
tickers <- c('NFLX','HD' )

l.out <- BatchGetSymbols(tickers = tickers, 
                         first.date = first.date,
                         last.date = last.date, 
                         freq.data = freq.data,
                         cache.folder = file.path(tempdir(), 
                        'BGS_Cache') ) # cache in tempdir()

head(l.out)

str(l.out)

l.out$df.tickers$ticker

## stock names:
plot(l.out$df.tickers$volume[1:550])


