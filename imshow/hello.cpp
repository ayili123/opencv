#include <opencv2/core/core.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
 
using namespace cv;
using namespace std;
 
int main(){
    //读入图像并显示图像
    Mat srcImage = imread("../1.png");//error: (-215) size.width>0 && size.height>0 in function imshow
    
    imshow("1", srcImage);//出现上面的错误是应为图片路劲不对
 
    waitKey(30000);
}
