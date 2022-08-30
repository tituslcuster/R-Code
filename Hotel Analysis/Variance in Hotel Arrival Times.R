#In this script I will be exploring the variance in activity as it
#relates to arrivals throughout a given year

read.csv(hotel_bookings)
?read.csv
#We need to filter our data into a single year
filtered_2017 <- hotel_bookings %>% 
  filter(hotel_bookings$arrival_date_year=='2017')

filtered_2015 <- hotel_bookings %>% 
  filter(hotel_bookings$arrival_date_year=='2015')

filtered_2016 <- hotel_bookings %>% 
  filter(hotel_bookings$arrival_date_year=='2016')

#We will be using hotel data (hotel_bookings) to build a bar chart

#Here is a version displaying a summary of 2015-2017
ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=arrival_date_month,fill=hotel))+
  labs(title='Variance in Hotel Arrival Times',
       subtitle='2015 - 2017')+
  theme(axis.text.x=element_text(angle=45))

#We now create values for each new plot based on the
#data frames we created above
ggplot(data=filtered_2017) +
  geom_bar(mapping=aes(x=arrival_date_month,fill=hotel))+
  labs(title='Variance in Hotel Arrival Times',
       subtitle='For the Year: 2017')+
  theme(axis.text.x=element_text(angle=45))

ggplot(data=filtered_2016) +
  geom_bar(mapping=aes(x=arrival_date_month,fill=hotel))+
  labs(title='Variance in Hotel Arrival Times',
       subtitle='For the Year: 2016')+
  theme(axis.text.x=element_text(angle=45))

ggplot(data=filtered_2015) +
  geom_bar(mapping=aes(x=arrival_date_month,fill=hotel))+
  labs(title='Variance in Hotel Arrival Times',
       subtitle='For the Year: 2015')+
  theme(axis.text.x=element_text(angle=45))

#Creating a bar chart of all months combined into a single year
ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=arrival_date_month,fill=hotel))+
  labs(title='Variance in Hotel Arrival Times')+
  theme(axis.text.x=element_text(angle=90))+
  facet_wrap(~arrival_date_year)

#Making the chart more readable
ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=arrival_date_month,fill=hotel))+
  labs(title='Variance in Hotel Arrival Times')+
  theme(axis.text.x=element_text(angle=90))+
  facet_wrap(~arrival_date_year,vars(class2))


