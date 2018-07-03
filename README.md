# iCCR
Incremental Cascaded Continuous Regression

IMPORTANT: USAGE IS AS FOLLOWS

1) Download and unrar the model, from: 
https://uniofnottm-my.sharepoint.com/:u:/g/personal/enrique_sanchezlozano_nottingham_ac_uk/EZJmYC5b2IJErTYFIR3IqKcBhdyURabHTpv-KINsjBny_w?e=N5vDBq

2) In Matlab, load model.mat
2.1) model.mat contains the following variables: "model" and "params". 

3) Define video = 'path_to_video.format' to process an existing video, or video = [] to process a webcam stream

4) Call track(model, video, params);

Example:
>>load model.mat
>>video = [];
>>data = track(model, video, params);

data will store the tracked points for the processed video


Copyright © 2018. Enrique Sánchez-Lozano

This is the Matlab code for paper:

[1] Enrique Sánchez-Lozano, Georgios Tzimiropoulos, Brais Martinez, Fernando De la Torre and Michel Valstar. A Functional Regression approach to Facial Landmark Tracking. In: IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI). 2018 (Early access). https://ieeexplore.ieee.org/abstract/document/8017515/

[2] Enrique Sánchez-Lozano, Brais Martinez, Georgios Tzimiropoulos and Michel Valstar. Cascaded Continuous Regression for Real-time Incremental Face Tracking. In: ECCV (VIII) pp. 645—661. 2016.

Important: Code is released as is for research purposes only. 

CCR models have been trained using the LFPW, HELEN, AFW, IBUG, Multi-PIE and 300VW (training partition) datasets. 

Should you use the code as is, please cite [1] and [2]. Should you use your own initialisation system, please cite [1]. 
The (bounding box) face detection utilises the DLIB library, and has been compiled only in Windows, and therefore is not yet available for Mac or Linux. Instead, the built-in Viola-Jones-based face detection system is used, which may result in a drop of performance. 


Contact: Enrique Sánchez-Lozano, Enrique.SanchezLozano@nottingham.ac.uk
