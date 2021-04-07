setwd("C:/Users/asus/Documents/21년도 1학기 확률과 통계")

# 연속형 데이터의 도수분포표 그리기
DF_student_body=read.csv(file="student_body.csv")
# 1단계: 최솟값 42.4 최댓값 84.0
# 2단계: 계급구간=10, 40~50,50~60,60~70,70~80,80~90
# 3단계: 도수= 2,7,8,4,1
# 4단계: 상대도수= 2/22,7/22,8/22,4/22,1/22

# 히스토그램 그리기 예제
attach(DF_student_body)
hist(Weight, breaks=seq(40,90,by=10))
hist(Height, breaks=seq(150,190,by=10))
detach(DF_student_body)

# 박스플롯 그리기 예제 1
DF_student_study=read.csv(file="student_study.csv")
attach(DF_student_study)
boxplot(Time,
        ylim=c(1,8),
        main="Boxplot of Study Time",
        xlab="Study Time",
        ylab="Hour")
detach(DF_student_study)

# 박스플롯 그리기 예제 2
DF_a_milk=read.csv(file="milk_content_A.csv")
DF_b_milk=read.csv(file="milk_content_B.csv")
DF_milk=cbind(DF_a_milk,DF_b_milk)
boxplot(DF_milk,
        ylim=c(10,70),
        main="Boxplot of Latte",
        xlab="Part-timer",
        ylab="Amount of Milk")

# 선형 상관 관계 산점도 예제
V1=c(3,5,9,15,18,24,28,30,33,38,41,45)
V2=c(4,8,12,17,21,25,29,35,38,44,50,57)
plot(V1,V2)

# 산점도 그리기 예제
plot(GPA~Time, data=DF_student_study,
     xlim=c(1,8), ylim=c(3,4.5),
     main="Plot of Student Study")
# 양의 상관관계가 있는 것으로 보임

# 추가 퀘스트
library(corrplot)
DF_student_study2<-DF_student_study[,c(3:5)]
corrplot(cor(DF_student_study2), method="circle")
corrplot(cor(DF_student_study2), method="square")
corrplot(cor(DF_student_study2), method="ellipse")
corrplot(cor(DF_student_study2), method="number")

# 연습문제
# 1 : 계급, 계급, IQR, 상관
# 2 : 박스플롯, 히스토그램, 산점도
# 3 : X, O, X, O
# 4
DF_mobile_battery=read.csv(file="mobile_battery.csv")
summary(DF_mobile_battery)
str(DF_mobile_battery)
# 5
boxplot(Battery_Life~Brand, data=DF_mobile_battery,
        ylim=c(9,16),
        main="Boxplot of Mobile Battery",
        xlab="Brand",
        ylab="Battery Life")
# 6
boxplot(Time~Grade, data=DF_student_study,
        ylim=c(1,8),
        main="Boxplot of Student Study",
        xlab="Grade",
        ylab="Time")
# 7
DF_adv_sales=read.csv(file="adv_sales.csv")
plot(Sales~ADV, data=DF_adv_sales,
     xlim=c(10,90), ylim=c(130,870),
     main="Plot of ADV Sales")