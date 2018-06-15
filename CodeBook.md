Study Design
=========
## How Collect this Raw Data?
The data is from **UCI Machine Learning Repository** and it's about the Human Activity Recognition database built from the recordings of 30 subjects (with ids from 1 to 30) performing  activities (6 classes of activities: Walking, walking up stairs, walking down stairs, sitting, standing and laying) of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

More details about the data [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


Code Book
=========
## About the Variables
There are *68 variables* in total. They can be divided into *2 groups* according to the order in which the columns of the output file are presented:  

### IDENTIFIERS (2)
1. subjectid: [integer] The id of the subject (From 1 to 30).
2. activityclass: [factor] The activity performing by a subject (walking, walkingupstairs, walkingdownstairs, sitting, standing and laying). 

### AVERAGES FEATURES (66)
The average value of all the features that contain measurements on the *mean* and *standard* deviation for each measurement grouped by the combination of a subject and an activity.
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
* average
The features are:

3. timedomainbodyaccelerationmeansignalinaxisxaverage: [m/s<sup>2</sup>]
4. timedomainbodyaccelerationmeansignalinaxisyaverage: [m/s<sup>2</sup>]
5. timedomainbodyaccelerationmeansignalinaxiszaverage: [m/s<sup>2</sup>]
6. timedomaingravityaccelerationmeansignalinaxisxaverage: [m/s<sup>2</sup>]
7. timedomaingravityaccelerationmeansignalinaxisyaverage: [m/s<sup>2</sup>]
8. timedomaingravityaccelerationmeansignalinaxiszaverage: [m/s<sup>2</sup>]
9. timedomainbodyaccelerationbyjerkderivativemeansignalinaxisxaverage: [m/s<sup>2</sup>]
10. timedomainbodyaccelerationbyjerkderivativemeansignalinaxisyaverage: [m/s<sup>2</sup>]
11. timedomainbodyaccelerationbyjerkderivativemeansignalinaxiszaverage: [m/s<sup>2</sup>]
12. timedomainbodyangularvelocitymeansignalinaxisxaverage: [rad/s]
13. timedomainbodyangularvelocitymeansignalinaxisyaverage: [rad/s]
14. timedomainbodyangularvelocitymeansignalinaxiszaverage: [rad/s]
15. timedomainbodyangularvelocitybyjerkderivativemeansignalinaxisxaverage: [rad/s]
16. timedomainbodyangularvelocitybyjerkderivativemeansignalinaxisyaverage: [rad/s]
17. timedomainbodyangularvelocitybyjerkderivativemeansignalinaxiszaverage: [rad/s]
18. timedomainbodyaccelerationbyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
19. timedomaingravityaccelerationbyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
20. timedomainbodyaccelerationbyjerkderivativebyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
21. timedomainbodyangularvelocitybyeuclideannormmeansignalaverage: [rad/s]
22. timedomainbodyangularvelocitybyjerkderivativebyeuclideannormmeansignalaverage: [rad/s]
23. frequencydomainbodyaccelerationmeansignalinaxisxaverage: [m/s<sup>2</sup>]
24. frequencydomainbodyaccelerationmeansignalinaxisyaverage: [m/s<sup>2</sup>]
25. frequencydomainbodyaccelerationmeansignalinaxiszaverage: [m/s<sup>2</sup>]
26. frequencydomainbodyaccelerationbyjerkderivativemeansignalinaxisxaverage: [m/s<sup>2</sup>]
27. frequencydomainbodyaccelerationbyjerkderivativemeansignalinaxisyaverage: [m/s<sup>2</sup>]
28. frequencydomainbodyaccelerationbyjerkderivativemeansignalinaxiszaverage: [m/s<sup>2</sup>]
29. frequencydomainbodyangularvelocitymeansignalinaxisxaverage: [rad/s]
30. frequencydomainbodyangularvelocitymeansignalinaxisyaverage: [rad/s]
31. frequencydomainbodyangularvelocitymeansignalinaxiszaverage: [rad/s]
32. frequencydomainbodyaccelerationbyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
33. frequencydomainbodybodyaccelerationbyjerkderivativebyeuclideannormmeansignalaverage: [m/s<sup>2</sup>]
34. frequencydomainbodybodyangularvelocitybyeuclideannormmeansignalaverage: [rad/s]
35. frequencydomainbodybodyangularvelocitybyjerkderivativebyeuclideannormmeansignalaverage: [rad/s]
36. timedomainbodyaccelerationstandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
37. timedomainbodyaccelerationstandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
38. timedomainbodyaccelerationstandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
39. timedomaingravityaccelerationstandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
40. timedomaingravityaccelerationstandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
41. timedomaingravityaccelerationstandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
42. timedomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
43. timedomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
44. timedomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
45. timedomainbodyangularvelocitystandarddeviationsignalinaxisxaverage: [rad/s]
46. timedomainbodyangularvelocitystandarddeviationsignalinaxisyaverage: [rad/s]
47. timedomainbodyangularvelocitystandarddeviationsignalinaxiszaverage: [rad/s]
48. timedomainbodyangularvelocitybyjerkderivativestandarddeviationsignalinaxisxaverage: [rad/s]
49. timedomainbodyangularvelocitybyjerkderivativestandarddeviationsignalinaxisyaverage: [rad/s]
50. timedomainbodyangularvelocitybyjerkderivativestandarddeviationsignalinaxiszaverage: [rad/s]
51. timedomainbodyaccelerationbyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
52. timedomaingravityaccelerationbyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
53. timedomainbodyaccelerationbyjerkderivativebyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
54. timedomainbodyangularvelocitybyeuclideannormstandarddeviationsignalaverage: [rad/s]
55. timedomainbodyangularvelocitybyjerkderivativebyeuclideannormstandarddeviationsignalaverage: [rad/s]
56. frequencydomainbodyaccelerationstandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
57. frequencydomainbodyaccelerationstandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
58. frequencydomainbodyaccelerationstandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
59. frequencydomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisxaverage: [m/s<sup>2</sup>]
60. frequencydomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxisyaverage: [m/s<sup>2</sup>]
61. frequencydomainbodyaccelerationbyjerkderivativestandarddeviationsignalinaxiszaverage: [m/s<sup>2</sup>]
62. frequencydomainbodyangularvelocitystandarddeviationsignalinaxisxaverage: [rad/s]
63. frequencydomainbodyangularvelocitystandarddeviationsignalinaxisyaverage: [rad/s]
64. frequencydomainbodyangularvelocitystandarddeviationsignalinaxiszaverage: [rad/s]
65. frequencydomainbodyaccelerationbyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
66. frequencydomainbodybodyaccelerationbyjerkderivativebyeuclideannormstandarddeviationsignalaverage: [m/s<sup>2</sup>]
67. frequencydomainbodybodyangularvelocitybyeuclideannormstandarddeviationsignalaverage: [rad/s]
68. frequencydomainbodybodyangularvelocitybyjerkderivativebyeuclideannormstandarddeviationsignalaverage: [rad/s]


## About the Summary Choices and Transformations
* The content of the two groups of three files that made up the training and test data set were combined by columns (using "cbind") in two diferent files with the same structure.
* Since the files have the same structure they were combined in one file by rows (using "rbind").
* We transform the dataframe into a tibble for reasons of efficiency.
* Using "select" and "matches" functions we extract only the measurements on the mean and standard deviation for each measurement.
* We transform the column "activityclass" from int to descriptive factor values (using "mapvalues") for reasons of efficiency and clarity, using the file with the list of activities but eliminating the symbols and transforming the text to lowercase.
* Then, we change the features names for some longer but more descriptive (using "sub" and "gsub").
* Finally, we will summarise all the features calculating his average for each combination of subject and activity (30 x 6 = 180 rows) and then we will add the word "average" for each feature name.