dataset_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download(dataset_url, dest = "data.zip", mode = "wb")
unzip("data.zip", exdir = "./")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
findata <- with(NEI, aggregate(Emissions, by = list(year), sum))