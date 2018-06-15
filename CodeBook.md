Study Design
=========
## How Collect this Raw Data?
The data is from **UCI Machine Learning Repository** and it's about the Human Activity Recognition database built from the recordings of 30 subjects (with ids from 1 to 30) performing  activities (6 classes of activities: Walking, walking up stairs, walking down stairs, sitting, standing and laying) of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

More details about the data [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


Code Book
=========
## About the Variables
There are *134 variables* in total. They can be divided into *3 groups* according to the order in which the columns of the output file are presented:  

### IDENTIFIERS (2)
1. subjectid: [integer] The id of the subject (From 1 to 30).
2. activityclass: [factor] The activity performing by a subject. 

### FEATURES (66)
All the features that contain measurements on the *mean* and *standard* deviation for each measurement.
All the feature values are **real numbers**.
All feature names are descriptive and are composed by a combination of conceptually clear words:
* timedomain.- The value of the variable is a function of time.
* frequencydomain.- The value of the variable is a function of frequency.
* acceleration.- The value is about the acceleration.
* angularvelocity.- The value is about the angular velocity.
* byjerkderivative.- The value also was derived in time to obtain Jerk signals.
* byeuclideannorm.- The value also was calculated using the Euclidean norm.
* meansignal.- The value showed is the mean value of the signal.
* standarddeviationsignal.- The value showed is the Standard deviation value of the signal.
* inaxisx.- The value was measured on the X-axis.
* inaxisy.- The value was measured on the Y-axis.
* inaxisz.- The value was measured on the Z-axis.

The features are:

3. timedomainbodyaccelerationmeansignalinaxisx: [m/s<sup>2</sup>]
4. timedomainbodyaccelerationmeansignalinaxisy: [m/s<sup>2</sup>]
5. timedomainbodyaccelerationmeansignalinaxisz: [m/s<sup>2</sup>]
6. timedomaingravityaccelerationmeansignalinaxisx: [m/s<sup>2</sup>]
7. timedomaingravityaccelerationmeansignalinaxisy: [m/s<sup>2</sup>]
8. timedomaingravityaccelerationmeansignalinaxisz: [m/s<sup>2</sup>]
9. timedomainbodyaccelerationbyjerkderivativemeansignalinaxisx: [m/s<sup>2</sup>]
10. timedomainbodyaccelerationbyjerkderivativemeansignalinaxisy: [m/s<sup>2</sup>]
11. timedomainbodyaccelerationbyjerkderivativemeansignalinaxisz: [m/s<sup>2</sup>]
12. timedomainbodyangularvelocitymeansignalinaxisx: [rad/s]
13. timedomainbodyangularvelocitymeansignalinaxisy: [rad/s]
14. timedomainbodyangularvelocitymeansignalinaxisz: [rad/s]
15. timedomainbodyangularvelocitybyjerkderivativemeansignalinaxisx: [rad/s]
16. timedomainbodyangularvelocitybyjerkderivativemeansignalinaxisy: [rad/s]
17. timedomainbodyangularvelocitybyjerkderivativemeansignalinaxisz: [rad/s]
18. timedomainbodyaccelerationbyeuclideannormmeansignal: [m/s<sup>2</sup>]
19. timedomaingravityaccelerationbyeuclideannormmeansignal: [m/s<sup>2</sup>]
20. timedomainbodyaccelerationbyjerkderivativebyeuclideannormmeansignal: [m/s<sup>2</sup>]
21. timedomainbodyangularvelocitybyeuclideannormmeansignal: [rad/s]
22. timedomainbodyangularvelocitybyjerkderivativebyeuclideannormmeansignal: [rad/s]
23. frequencydomainbodyaccelerationmeansignalinaxisx: [m/s<sup>2</sup>]
24. frequencydomainbodyaccelerationmeansignalinaxisy: [m/s<sup>2</sup>]
25. frequencydomainbodyaccelerationmeansignalinaxisz: [m/s<sup>2</sup>]
26. frequencydomainbodyaccelerationbyjerkderivativemeansignalinaxisx: [m/s<sup>2</sup>]
27. frequencydomainbodyaccelerationbyjerkderivativemeansignalinaxisy: [m/s<sup>2</sup>]
28. frequencydomainbodyaccelerationbyjerkderivativemeansignalinaxisz: [m/s<sup>2</sup>]
29. frequencydomainbodyangularvelocitymeansignalinaxisx: [rad/s]
30. frequencydomainbodyangularvelocitymeansignalinaxisy: [rad/s]
31. frequencydomainbodyangularvelocitymeansignalinaxisz: [rad/s]
32. frequencydomainbodyaccelerationbyeuclideannormmeansignal: [m/s<sup>2</sup>]
33. frequencydomainbodybodyaccelerationbyjerkderivativebyeuclideannormmeansignal: [m/s<sup>2</sup>]
34. frequencydomainbodybodyangularvelocitybyeuclideannormmeansignal: [rad/s]
35. frequencydomainbodybodyangularvelocitybyjerkderivativebyeuclideannormmeansignal: [rad/s]
36. timedomainbodyaccelerationstandarddeviationsignalinaxisx: [m/s<sup>2</sup>]
37. timedomainbodyaccelerationstandarddeviationsignalinaxisy: [m/s<sup>2</sup>]
38. timedomainbodyaccelerationstandarddeviationsignalinaxisz: [m/s<sup>2</sup>]
39. timedomaingravityaccelerationstandarddeviationsignalinaxisx: [m/s<sup>2</sup>]
40. timedomaingravityaccelerationstandarddeviationsignalinaxisy: [m/s<sup>2</sup>]
41. timedomaingravityaccelerationstandarddeviationsignalinaxisz: [m/s<sup>2</sup>]
42. timedomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisx: [m/s<sup>2</sup>]
43. timedomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisy: [m/s<sup>2</sup>]
44. timedomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisz: [m/s<sup>2</sup>]
45. timedomainbodyangularvelocitystandarddeviationsignalinaxisx: [rad/s]
46. timedomainbodyangularvelocitystandarddeviationsignalinaxisy: [rad/s]
47. timedomainbodyangularvelocitystandarddeviationsignalinaxisz: [rad/s]
48. timedomainbodyangularvelocitybyjerkderivativestandarddeviationsignalinaxisx: [rad/s]
49. timedomainbodyangularvelocitybyjerkderivativestandarddeviationsignalinaxisy: [rad/s]
50. timedomainbodyangularvelocitybyjerkderivativestandarddeviationsignalinaxisz: [rad/s]
51. timedomainbodyaccelerationbyeuclideannormstandarddeviationsignal: [m/s<sup>2</sup>]
52. timedomaingravityaccelerationbyeuclideannormstandarddeviationsignal: [m/s<sup>2</sup>]
53. timedomainbodyaccelerationbyjerkderivativebyeuclideannormstandarddeviationsignal: [m/s<sup>2</sup>]
54. timedomainbodyangularvelocitybyeuclideannormstandarddeviationsignal: [rad/s]
55. timedomainbodyangularvelocitybyjerkderivativebyeuclideannormstandarddeviationsignal: [rad/s]
56. frequencydomainbodyaccelerationstandarddeviationsignalinaxisx: [m/s<sup>2</sup>]
57. frequencydomainbodyaccelerationstandarddeviationsignalinaxisy: [m/s<sup>2</sup>]
58. frequencydomainbodyaccelerationstandarddeviationsignalinaxisz: [m/s<sup>2</sup>]
59. frequencydomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisx: [m/s<sup>2</sup>]
60. frequencydomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisy: [m/s<sup>2</sup>]
61. frequencydomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisz: [m/s<sup>2</sup>]
62. frequencydomainbodyangularvelocitystandarddeviationsignalinaxisx: [rad/s]
63. frequencydomainbodyangularvelocitystandarddeviationsignalinaxisy: [rad/s]
64. frequencydomainbodyangularvelocitystandarddeviationsignalinaxisz: [rad/s]
65. frequencydomainbodyaccelerationbyeuclideannormstandarddeviationsignal: [m/s<sup>2</sup>]
66. frequencydomainbodybodyaccelerationbyjerkderivativebyeuclideannormstandarddeviationsignal: [m/s<sup>2</sup>]
67. frequencydomainbodybodyangularvelocitybyeuclideannormstandarddeviationsignal: [rad/s]
68. frequencydomainbodybodyangularvelocitybyjerkderivativebyeuclideannormstandarddeviationsignal: [rad/s]

### CALCULARE FEATURES (66)
This column has the value of the average of each feature for each combination of activity and subject.
All the calculate feature values are **real numbers**.
As before, all feature names are descriptive and are composed by a combination of conceptually clear words including at the end the "average" word.

The features are:

69. timedomainbodyaccelerationmeansignalinaxisxaverage: [m/s<sup>2</sup>]
70. timedomainbodyaccelerationmeansignalinaxisyaverage: [m/s<sup>2</sup>]
71. timedomainbodyaccelerationmeansignalinaxiszaverage: [m/s<sup>2</sup>]
72. timedomaingravityaccelerationmeansignalinaxisxaverage: [m/s<sup>2</sup>]
73. timedomaingravityaccelerationmeansignalinaxisyaverage: [m/s<sup>2</sup>]
74. timedomaingravityaccelerationmeansignalinaxiszaverage: [m/s<sup>2</sup>]
75. timedomainbodyaccelerationbyjerkderivativemeansignalinaxisxaverage: [m/s<sup>2</sup>]
76. timedomainbodyaccelerationbyjerkderivativemeansignalinaxisyaverage: [m/s<sup>2</sup>]
77. timedomainbodyaccelerationbyjerkderivativemeansignalinaxiszaverage: [m/s<sup>2</sup>]
78. timedomainbodyangularvelocitymeansignalinaxisxaverage: [rad/s]
79. timedomainbodyangularvelocitymeansignalinaxisyaverage: [rad/s]
80. timedomainbodyangularvelocitymeansignalinaxiszaverage: [rad/s]
81. timedomainbodyangularvelocitybyjerkderivativemeansignalinaxisxaverage: [rad/s]
82. timedomainbodyangularvelocitybyjerkderivativemeansignalinaxisyaverage: [rad/s]
83. timedomainbodyangularvelocitybyjerkderivativemeansignalinaxiszaverage: [rad/s]
84. timedomainbodyaccelerationbyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
85. timedomaingravityaccelerationbyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
86. timedomainbodyaccelerationbyjerkderivativebyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
87. timedomainbodyangularvelocitybyeuclideannormmeansignalaverage: [rad/s]
88. timedomainbodyangularvelocitybyjerkderivativebyeuclideannormmeansignalaverage: [rad/s]
89. frequencydomainbodyaccelerationmeansignalinaxisxaverage: [m/s<sup>2</sup>]
90. frequencydomainbodyaccelerationmeansignalinaxisyaverage: [m/s<sup>2</sup>]
91. frequencydomainbodyaccelerationmeansignalinaxiszaverage: [m/s<sup>2</sup>]
92. frequencydomainbodyaccelerationbyjerkderivativemeansignalinaxisxaverage: [m/s<sup>2</sup>]
93. frequencydomainbodyaccelerationbyjerkderivativemeansignalinaxisyaverage: [m/s<sup>2</sup>]
94. frequencydomainbodyaccelerationbyjerkderivativemeansignalinaxiszaverage: [m/s<sup>2</sup>]
95. frequencydomainbodyangularvelocitymeansignalinaxisxaverage: [rad/s]
96. frequencydomainbodyangularvelocitymeansignalinaxisyaverage: [rad/s]
97. frequencydomainbodyangularvelocitymeansignalinaxiszaverage: [rad/s]
98. frequencydomainbodyaccelerationbyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
99. frequencydomainbodybodyaccelerationbyjerkderivativebyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
100. frequencydomainbodybodyangularvelocitybyeuclideannormmeansignalaverage: [rad/s]
101. frequencydomainbodybodyangularvelocitybyjerkderivativebyeuclideannormmeansignalaverage: [rad/s]
102. timedomainbodyaccelerationstandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
103. timedomainbodyaccelerationstandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
104. timedomainbodyaccelerationstandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
105. timedomaingravityaccelerationstandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
106. timedomaingravityaccelerationstandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
107. timedomaingravityaccelerationstandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
108. timedomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
109. timedomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
110. timedomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
111. timedomainbodyangularvelocitystandarddeviationsignalinaxisxaverage: [rad/s]
112. timedomainbodyangularvelocitystandarddeviationsignalinaxisyaverage: [rad/s]
113. timedomainbodyangularvelocitystandarddeviationsignalinaxiszaverage: [rad/s]
114. timedomainbodyangularvelocitybyjerkderivativestandarddeviationsignalinaxisxaverage: [rad/s]
115. timedomainbodyangularvelocitybyjerkderivativestandarddeviationsignalinaxisyaverage: [rad/s]
116. timedomainbodyangularvelocitybyjerkderivativestandarddeviationsignalinaxiszaverage: [rad/s]
117. timedomainbodyaccelerationbyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
118. timedomaingravityaccelerationbyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
119. timedomainbodyaccelerationbyjerkderivativebyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
120. timedomainbodyangularvelocitybyeuclideannormstandarddeviationsignalaverage: [rad/s]
121. timedomainbodyangularvelocitybyjerkderivativebyeuclideannormstandarddeviationsignalaverage: [rad/s]
122. frequencydomainbodyaccelerationstandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
123. frequencydomainbodyaccelerationstandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
124. frequencydomainbodyaccelerationstandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
125. frequencydomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
126. frequencydomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
127. frequencydomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
128. frequencydomainbodyangularvelocitystandarddeviationsignalinaxisxaverage: [rad/s]
129. frequencydomainbodyangularvelocitystandarddeviationsignalinaxisyaverage: [rad/s]
130. frequencydomainbodyangularvelocitystandarddeviationsignalinaxiszaverage: [rad/s]
131. frequencydomainbodyaccelerationbyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
132. frequencydomainbodybodyaccelerationbyjerkderivativebyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
133. frequencydomainbodybodyangularvelocitybyeuclideannormstandarddeviationsignalaverage: [rad/s]
134. frequencydomainbodybodyangularvelocitybyjerkderivativebyeuclideannormstandarddeviationsignalaverage: [rad/s]


## About the Summary Choices and Transformations
* The content of the two groups of three files that made up the training and test data set were combined by columns (using "cbind") in two diferent files with the same structure.
* Since the files have the same structure they were combined in one file by rows (using "rbind").
* We transform the dataframe into a tibble for reasons of efficiency.
* Using "select" and "matches" functions we extract only the measurements on the mean and standard deviation for each measurement.
* We transform the column "activityclass" from int to descriptive factor values (using "mapvalues") for reasons of efficiency and clarity, using the file with the list of activities but eliminating the symbols and transforming the text to lowercase.
* Then, we change the features names for some longer but more descriptive (using "sub" and "gsub").
* Finally, we create dynamically a column for each feature with the average of each variable for each activity and each subject (using "group_by", "mutate", "parse_quosure" and a for-bucle)