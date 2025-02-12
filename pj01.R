diem_TN_moi
#lệnh đơn
#điểm môn toán
mean(diem_TN_moi$T)
sd(diem_TN_moi$T)
#điểm môn anh
mean(diem_TN_moi$A)
sd(diem_TN_moi$A)
#lệnh tổng quan
summary(diem_TN_moi$T)
#tổng quan cho toàn bộ dữ liệu
summary(diem_TN_moi)
#thống kê mô tả cho từng nhóm trong biến chỉ số
by(diem_TN,gioitinh,summary)
names(diem_TN_moi)
#
2. suy diễn thống kê qua các bài toán kiểm định
#kiểm định trung bình
t.test(diem_TN_moi$T,mu= 8, conf.level =0.95)
#kiểm định tỉ lệ
n=800;m=448
prop.test(m,n,p=0.5,alternative="greater",conf.level=0.99)
#kiểm định 2 mẫu với trung bình
t.test(diem_TN_moi$T~diem_TN_moi$gioi.tinh)
#kiểm định 2 mẫu tỉ lệ
m<-c(7,20)
n<-c(100,110)
prop.test(m,n)
#kiểm định trung bình với dữ liệu không tuân theo phân phối chuẩn
wilcox.test(diem_TN_moi$T~diem_TN_moi$gioi.tinh)
dl<-rep(c(5,7,9,11,13,15,17,19,21),times=c(15,26,25,30,26,21,24,20,13))
shapiro.test(dl)
marketing
cor(marketing, method = "pearson")
cor(marketing, method = "kendall")




