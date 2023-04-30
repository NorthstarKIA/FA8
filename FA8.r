#n Example 16.3 with 𝜆 = 4 per minute, use R to obtain:
#(a) P(T ≤ 0.25) = P(time between submissions is at most 15 seconds);
#(b) P(T > 0.5) = P(time between submissions is greater than 30 seconds);
#(c) P(0.25 < T < 1) = P(time between submissions is between 15 seconds and 1 minute).

#a                      
apos <- pexp(0.25, rate = 4, lower.tail = TRUE)
apos
#b                      
bpos <- 1 - pexp(0.5, rate = 4, lower.tail = TRUE)
bpos
#c                    
cpos <- pexp(1, rate = 4, lower.tail = TRUE) - pexp(0.25, rate = 4, lower.tail = TRUE)
cpos

#The average rate of job submissions in a computer center is 2 per minute. If
#it can be assumed that the number of submissions per minute has a Poisson
#distribution, calculate the probability that:
#(a) more than two jobs will arrive in a minute;
#(b) at least 30 seconds will elapse between any two jobs;
#(c) less than 30 seconds will elapse between jobs;
#(d) a job will arrive in the next 30 seconds, if no jobs have arrived in the last 30 seconds.

#a                       
a2pos <- 1 - ppois(2, lambda = 2)
a2pos

#b                       
b2pos <- pexp(30, rate = 1/30)
b2pos

#c                       
c2pos <- 1 - pexp(30, rate = 1/30)
c2pos

#d                     
d2pos <- dexp(30, rate = 1/30)
d2pos

#A website receives an average of 15 visits per hour, which arrive following a
#Poisson distribution.
#(a) Calculate the probability that at least 10 minutes will elapse without a visit.
#(b) What is the probability that in any hour, there will be less than eight visits?
#(c) Suppose that 15 minutes have elapsed since the last visit, what is the probability that a visit will occur in the next 15 minutes.
#(d) Calculate the top quartile, and explain what it means.

#a                       
a3pos <- pexp(10, rate = 0.25)
a3pos

#b                     
b3pos <- ppois(7, lambda = 15)
b3pos

#c                      
c3pos <- dexp(15, rate = 0.25)
c3pos

#d                       
d3pos <- qpois(0.75, lambda = 15)
d3pos
