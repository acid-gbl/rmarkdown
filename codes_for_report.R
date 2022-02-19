# 批量生成报告
# 修改路径report_wd之后就可以直接运行

# 如果没有下过，需要先下载下面几个R包，注意要网络良好
install.packages("ggplot2")
install.packages("rmarkdown")
install.packages("showtext")
install.packages("bookdown")

# 加载包
library(ggplot2)
library(rmarkdown)
library(showtext)
library(bookdown)

report_wd <- "D:/study/current/数据分析/interruption/study2_data/personal_report/"

# 读入数据
report_dat<-read.csv(file=paste0(report_wd,"plot data.csv"))
report_dat$ID<-as.factor(report_dat$ID)

ids<-c("356990","582696","942990","992198")

# 对每个被试i生成个ds<-("")人报告的pdf
for (i in ids){  
  render(paste0(report_wd,"/生成个人报告pdf.Rmd"),
         output_file = paste0(report_wd,"/pdfs/个人报告(",i,").pdf"))
}
