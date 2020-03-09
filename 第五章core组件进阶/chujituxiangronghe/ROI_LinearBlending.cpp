#include<opencv2/opencv.hpp>
#include<iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <time.h>

using namespace cv;
bool ROI_LinearBlending(){
    //printf("000000000000");
Mat srcImage4 = imread("../dota_pa.png",1);
Mat srcImage = imread("../dota_logo.png");
Mat dst;
if(srcImage4.empty()){
    printf("读取srcImage4 error!\n");
    return false;
}
if(srcImage.empty()){
    printf("读取srcImage error!\n");
    return false;
}
imshow("srcImage4原图",srcImage4);
imshow("srcImage原图",srcImage);
Mat ROIImage;
ROIImage = srcImage4(Rect(200,250,srcImage.cols,srcImage.rows));//选择融合的区域，大小为被融合的图片大小
addWeighted(ROIImage,0.5,srcImage,0.3,0,ROIImage);
namedWindow("ROI融合结果窗口");
imshow("ROI融合结果窗口",srcImage4);
dst = srcImage4.clone();
imwrite("ROI融合结果窗口.jpg",dst);
return true;
//srcImage.copyTo();
}
bool ROI_LinearBlending();
int main(){
    system("color 5E");

  if(ROI_LinearBlending()){
      printf("运行成功！\n");
  }
  waitKey(0);
  return 0;


}

