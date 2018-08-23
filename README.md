# Face Tracking library using Incremental Cascaded Continuous Regression.
## IMPORTANT: USAGE IS AS FOLLOWS

- Download and unrar the model, from: 
https://uniofnottm-my.sharepoint.com/:u:/g/personal/enrique_sanchezlozano_nottingham_ac_uk/EZJmYC5b2IJErTYFIR3IqKcBhdyURabHTpv-KINsjBny_w?e=N5vDBq

- Alternatively, you can download the code from [https://www.dropbox.com/s/6qwl2ca0m607o8d/model.rar?dl=0]

- In Matlab, load model.mat

  - model.mat contains the following variables: "model" and "params". 

- Define video = 'path_to_video.format' to process an existing video, or video = [] to process a webcam stream

- Call track(model, video, params);

- Example:
```
>>load model.mat
>>video = [];
>>data = track(model, video, params); % - data will store the tracked points for the processed video
```

- Should you want to detect the points in single images (i.e. without applying the tracking step), you can proceed as follows:
```
>>pts = detect_pts_SDM( im , model ); % - where im is the target image
```
- You can also refine the points applying a tracking step on the given points:
```
>>pts = ccr_track( im , pts , model );
```

## Copyright © 2018. Enrique Sánchez-Lozano

This is the Matlab code for papers:

```
@ARTICLE{sanchez2018pami, 
  author={E. Sánchez-Lozano and G. Tzimiropoulos and B. Martinez and F. {De la Torre} and M. Valstar}, 
  journal={IEEE Transactions on Pattern Analysis and Machine Intelligence}, 
  title={A Functional Regression Approach to Facial Landmark Tracking}, 
  year={2018}, 
  volume={40}, 
  number={9}, 
  pages={2037-2050}, 
  doi={10.1109/TPAMI.2017.2745568}, 
  ISSN={0162-8828}, 
  month={Sept},
}
```

```
@inproceedings{sanchez2016eccv,
  author="S{\'a}nchez-Lozano, Enrique and Martinez, Brais and Tzimiropoulos, Georgios and Valstar, Michel",
  editor="Leibe, Bastian and Matas, Jiri and Sebe, Nicu and Welling, Max", 
  title="Cascaded Continuous Regression for Real-Time Incremental Face Tracking",
  booktitle="Computer Vision -- ECCV 2016",
  year="2016",
  publisher="Springer International Publishing",
  pages="645--661",
  isbn="978-3-319-46484-8"
}
```

Important: Code is released as is for research purposes only. 

CCR models have been trained using the LFPW, HELEN, AFW, IBUG, Multi-PIE and 300VW (training partition) datasets. 

Should you use the code as is, please cite the papers above. The (bounding box) face detection utilises the DLIB library, and has been compiled only in Windows. For Mac and Linux the built-in Viola-Jones-based face detection system is used, which may result in a drop of performance. 


Contact: Enrique Sánchez-Lozano, Enrique.SanchezLozano@nottingham.ac.uk
