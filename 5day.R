#5일차


# 2.1 txt/excel 파일 읽기
# 2.2 자료의 종류
# 2.3 단일 변수 범주형 자료 탐색
# 2.4 단일 변수 연속형 자료 탐색

#Text file읽기
setwd("C:\\WorkspaceR")
df <- read.table(file = "airquality.txt", header = T)
df

class(df)

#Excel 파일 읽기
#Excel 파일 읽기용 패키지 설치
install.packages("xlsx")  # Excel 파일 읽기 패키지
install.packages("rJava") # Java 실행 패키지(패키지는 큰따옴표)

# 기본 패키지 외에 서리된 패키지 사용 (library Load)
library(rJava) 
library(xlsx)

setwd("C:\\WorkspaceR") #파일 저장 경로 설정
df.xlsx <- read.xlsx(file = "airquality.xlsx",
                      sheetIndex = 1,
                      encoding = "UTF-8")
df.xlsx
class(df.xlsx)
str(df.xlsx)
head(df.xlsx)
tail(df.xlsx)


score <- c(76, 84 , 69 , 50 ,95 ,6 , 85 , 71 ,88, 84)
which(score==69)
which(score>=85)
max(score)
which.max(score) #최고값의 index
min(score)
which.min(score) #최저값의 index

idx <- which(score>=60)
score[idx] <- 61
score

idx <- which(df.xlsx[, 1:2]== "NA", arr.ind = TRUE)
               # arr.ind = TRUE : 해당 조건의 행/열값을 확인할 때
idx
