#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
 
using namespace cv;
using namespace std;
 
int main(){
    //读入图像并显示图像
    Mat srcImage = imread("dota_pa.png");
    Mat logoImage = imread("dota_logo.png");
    if (!srcImage.data)
        cout << "读取srcImage错误！" << endl;
    imshow("dota_pa原始图", srcImage);
 
    if (!logoImage.data)
        cout << "读取logoImage错误！"<< endl;
    imshow("dota_logo原始图",logoImage);
 
    //定义一个Mat类型并给其设定ROI区域
    Mat imageROI = srcImage(Rect(500, 
                   250, logoImage.cols, logoImage.rows));
 
    //加载掩模板(灰度图就可以）
    Mat mask = imread("dota_logo.png", 0);
 
    //将掩膜复制到ROI
    logoImage.copyTo(imageROI, mask);
    
    //显示结果
    namedWindow("<1>利用ROI实现图像叠加实例窗口");
    imshow("<1>利用ROI实现图像叠加实例窗口", srcImage);
 
    waitKey(0);
}
