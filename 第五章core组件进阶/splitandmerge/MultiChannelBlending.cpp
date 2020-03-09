#include<opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include<iostream>
#include <stdio.h>
#include <vector>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <time.h>

using namespace cv;
using namespace std;
bool MultiChannelBlending(){
    Mat srcImage ;
    Mat logoImage;
    vector<Mat> channels;
    Mat imageblueChannel;
    Mat imageGreenChannel;


    Mat imageRedChannel;
    logoImage = imread("../dota_logo.png",0);//这里参数为0
    srcImage = imread("../dota_pa.png",1);
    if(!logoImage.data){
        printf("logoImage为空!\n");
        return false;
    }
    if(!srcImage.data){
        printf("srcImage为空!\n");
        return false;
    }
   split(srcImage,channels);//分离
   imageblueChannel = channels.at(0);
   imageGreenChannel = channels.at(1);
   imageRedChannel = channels.at(2);
   imshow("1",imageblueChannel);
   imshow("2",imageGreenChannel);
   imshow("3",imageRedChannel);
   imshow("4",logoImage);
   //对区域进行加权混合,就是蓝色加灰度图标，如果图标是3通道就不能惭怍，所以要加载图标的灰度值
   addWeighted(imageblueChannel(Rect(200,250,logoImage.cols,logoImage.rows)),1.0,
   logoImage,1.0,0.,imageblueChannel(Rect(200,250,logoImage.cols,logoImage.rows)));
   merge(channels,srcImage);
   namedWindow("src+blue色通道");
   imshow("src+blue色通道",srcImage);
   return true;
  
}
bool MultiChannelBlending();
int main(){
    system("color 9F");
MultiChannelBlending();
  
  waitKey(0);
  return 0;


}

