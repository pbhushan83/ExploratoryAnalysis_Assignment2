# Set working directory
setwd("~/R/RDocuments/FNEI_data")

# Read the files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Emissions <- aggregate(NEI$Emissions, by=list(NEI$year), FUN=sum)

names(Emissions)[1] <- "Year"

png("plot1.png")

barplot(Emissions$x,
        Emissions$Year,
        ylab = "PM2.5",
        xlab = "Year",
        names.arg = Emissions$Year,
        main = "Total PM2.5 emission"
)

dev.off()

barplot(Emissions$x,
        Emissions$Year,
        ylab = "PM2.5",
        xlab = "Year",
        names.arg = Emissions$Year,
        main = "Total PM2.5 emission"
)

