#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
 
using namespace cv;
using namespace std;
 
int main(){
    vector<Mat> channels;
    Mat imageBlueChannel;
    Mat imageGreenChannel;
    Mat imageRedChannel;
    Mat srcImage4 = imread("dota_pa.png");
    imshow("【原始图】", srcImage4);
 
    //把一个3通道图像转换成3个单通道图像
    split(srcImage4, channels);
    imageBlueChannel = channels.at(0);
    imageGreenChannel = channels.at(1);
    imageRedChannel = channels.at(2);
 
    //显示单通道图像
    imshow("【BlueChannel】", imageBlueChannel);
    imshow("【GreenChannel】", imageGreenChannel);
    imshow("【RedChannel】", imageRedChannel);
 
    waitKey();
}
