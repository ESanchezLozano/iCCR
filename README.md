# iCCR
Incremental Cascaded Continuous Regression

Copyright © 2016. Enrique Sánchez-Lozano

This is the Matlab code for paper:

[1] Enrique Sánchez-Lozano, Brais Martinez, Georgios Tzimiropoulos and Michel Valstar. Cascaded Continuous Regression for Real-time Incremental Face Tracking. In: ECCV (VIII) pp. 645—661. 2016.

Important: Code is released as is for research purposes only. 

CCR models have been trained using the LFPW, HELEN, AFW, IBUG, Multi-PIE and 300VW (training partition) datasets. 
The initialisation uses the code written for paper:

[2] Enrique Sánchez-Lozano, Brais Martinez and Michel Valstar. Cascaded Regression with sparsified feature covariance matrix for facial landmark detection. In: Pattern Recognition Letters 73, pp 19—26. 

Should you use the code as is, please cite [1] and [2]. Should you use your own initialisation system, please cite [1]. 
The (bounding box) face detection utilises the DLIB library, and has been compiled only in Windows, and therefore is not yet available for Mac or Linux. Instead, the built-in Viola-Jones-based face detection system is used, which may result in a drop of performance. 


Contact: Enrique Sánchez-Lozano, Enrique.Sanchez-Lozano@nottingham.ac.uk
