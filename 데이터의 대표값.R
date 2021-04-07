sum(c(1:50))
mean(c(1:50))

setwd("C:/Users/asus/Documents/21년도 1학기 확률과 통계")
DF_student_exam = read.csv(file = "student_exam.csv")
mean(DF_student_exam$Class_A)
mean(DF_student_exam$Class_B)

DF_coffee_location = 
  read.csv(file = "coffee_monthly_location_sales.csv")
mean(DF_coffee_location$No_Seoul)
mean(DF_coffee_location$No_Gangneung)
mean(DF_coffee_location$No_Busan)

median(c(1, 10, 5, 8, 9, 20))
median(c(1, 2, 3, 4))

median(DF_student_exam$Class_A)
median(DF_student_exam$Class_B)

median(DF_coffee_location$No_Seoul)
median(DF_coffee_location$No_Gangneung)
median(DF_coffee_location$No_Busan)

