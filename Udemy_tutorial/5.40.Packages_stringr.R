stringr::str_length('abs')

library()
# install.packages('stringr')

# importing package
library('stringr')

str_length('abcd')

text <- 'This lesson is about package stringr'

str_sub(text, 6, 14)
str_sub(text, 2, -5)

str_sub(text, 21, 21) <- ' famous '
text

t = str_pad('R course', width = 20, side = 'both')
t

str_trim(t)

cities <- c('Warsaw', 'Praha', 'Berlin', 'London')
str_sort(cities)
str_order(cities)

str_detect(cities, '^P.*', )
str_subset(cities, '^P.*')

str_count(cities, 'a')
str_locate(cities, 'a')

str_replace_all(cities, 'a', 'BBB')
str_replace(cities, 'a', 'BBB')





twitter <-  c("@virginamerica Need to change reservation. Have Virgin credit card. Do I need to modify on phone to waive change fee? Or can I do online?",
              "@VirginAmerica shame on VA for making people spend money in stranded cities when other airlines are landing at JFK! Who will reimburse me?",
              "@VirginAmerica gave a credit for my Late Flight flight yesterday. Great service !!!! That's a Wow moment! Unexpected gesture!",
              "@VirginAmerica Your back of seat entertainment system does not accept credit cards that  have an apostrophe in the surname. #apostrophefail",
              "@united. ..I received on other flights. #united  truly breaks guitars. #unitedbreaksguitars #wantmymoneyback",
              "@united disappointed that u didnt honor my $100 credit given to me for ur mistakes. Taking my business elsewhere",
              "@united it was credit from my last trip that never came in the mail!",
              "@united agent split up my reservation? Now can't Cancelled Flight and refund credit for 2wks? Why",
              "@United fucked up, then voided my ticket, and KEPT MY MONEY.  Not even an apology. I will never fly with your airline again. #UnitedAirlines",
              "@united I wasn't asking for a full refund but delaying me 3 hours and giving no reason should be enough to give partial credit",
              "@united why do you guys split up the charges to credit cards? Making it unnecessarily more expensive for people to fly with you guys on pts",
              "@united My credit card was charged on the transaction when I was told it would not be. If the charge goes through I will be contacting you.",
              "@united @ShowExpert what is going on with United's Mileage Program? You pay $500 for a ticket and get a fraction of that as PQD credit?",
              "@united customers aren't dumb. These revenue based programs will hurt everyone. Not gonna save money like you think",
              "@united I am UA elite Gold and have a UA Chase pres. plus credit card.  How many EQM's do I need to get Platinum Elite!",
              "@united Would be nice if @staralliance partner tickets that don't provide full PQM credit are more obvious before purchase. Lost 1,200 miles",
              "@united 8 hours Late Flightr and I'm siting on another plane waiting to leave. I think a credit is in order for this terrible service!",
              "@united AND WE GOT ZERO VOUCHERS FOR HOTEL OR CAB. I expect some SERIOUS mileage credits.",
              "@united heard about the voucher/miles credit for Cancelled Flighting my international flight yesterday, but I didn't get an email."
)

str_count(twitter)

length(twitter)

str_starts(twitter, '@united')

sum(str_starts(twitter, '@united'))

sum(str_starts(twitter, '@Virgin'))

twitter <- str_to_lower(twitter)

sum(str_starts(twitter, '@united'))

sum(str_starts(twitter, '@virgin'))


str_detect(twitter, 'credit')
sum(str_detect(twitter, 'credit'))

twitter <- str_replace(twitter, 'credit card', 'money')
sum(str_detect(twitter, 'credit card'))

str_locate(twitter, ' ')

str_split_fixed(twitter, ' ', n = 2)[,1]
str_split_fixed(twitter, ' ', n = 2)[,2]

twitter <- str_sub(twitter, ' ') <- ': '
twitter