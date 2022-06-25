# Related work
## Some notes on the field
- Active area of research especially in context of applying machine learning for network traffic classification
- There are not many resources on DDoS detection specifically in context of IoT and Machine Learning
- There is no survey that compares machine-learning and deep learning approaches for DDoS detection under IoT constraints
  - Specifically no comparison between feature-engineering/feature-inferring, computational complexity, detection of knows/unknown attacks, ability to predict, efficiency, practical use
- Other surveys focus on DDos attacks and defenses in IoT or in general 
- Other surveys focus on wider perspective of IoT Security and Machine Learning/Deep Learning
## DDoS detection and prevention
### General DDoS protection
- R. Vishwakarma and A.K Jain present a comprehensive survey of DDoS attacking and DDos defense techniques for IoT
  - The authors present the layered IoT architecture and security issues of IoT networks
  - They present an extensive taxonomy of IoT specific DDoS attack types and defense techniques 
  - Furthermore, they compare the pros and cons of each defense method and discuss open research questions and limitations
- Zargar et al. present a survey of defense mechanisms against DDos
  - They show a taxonomy of DDoS attacks and classify existing countermeasures in context of different use-cases
  - They emphasise the role of IoT in expansion of DDoS attacks
- Saied et al. uses Artificial Neural Networks (ANNs) to detect and prevent known and unknown DDoS attacks
  - They train an ANN to detect TCP, UDP and ICMP DDoS attacks based on network traffic characteristics
  - The training data was obtained by reproducing real network environment while launching different DDoS attacks
  - The classification accuracy was superior to existing approaches particularly for detection of unknown DDoS attacks
  - Furthermore, they show the significance of using up-to-date data that has up-to-date traffic patterns 
- Su uses a weighted k-nearest neighbour classifier for real-time DDoS detection
  - He proposes a genetic algorithm for feature selection and weighting, and evaluates his classifier using several known DDoS attacks
  - He obtains 97.42% detection rate for known DDoS attacks and 78% detection rate for unknown DDoS attacks
### DDoS detection in IoT networks using Machine Learning and Deep Learning methods 
- Aysa et al. investigates performance of several machine learning approaches for classification of DDoS attacks based on information about network traffic
  - The authors use a dataset consisting of real traffic data collected from 9 commercial IoT devices infected with Mirai and BASHLITE
  - Preliminary results show that a combination of Decision Tree and a Random Forest outperforms other approaches
- N. Ravi and S. M. Shalinie examine DDoS attacks triggered by malicious IoT devices on IoT servers
  - They leverage Software Defined Network paradigm and semi-supervised machine-learning algorithm for DDoS detection and mitigation
  - They report 96.28% of accuracy rate in detection of DDoS attacks
- In Boosting-Based DDoS Detection in Internet of Things Systems Cvitic et al. focus on IoT specific DDoS traffic detection model
  - They propose an approach of classifying devices in 4 classes based on the predictability of network generated traffic 
  - Their classification accuracy for those 4 classes lies between 99.92% and 99.99% and facilitates detection of DDoS-related traffic
- Doshi et al. demonstrate that IoT-specific network characteristics are sufficient to detect DDoS attacks with high accuracy using machine learning methods
  - They train and compare performance of several machine learning algorithms including neural networks
  - Dataset consists of network flow information
  - All methods achieved accuracy of about 99%
  - They conclude that consumer gateway devices could detect local sources of DDoS attacks using low-cost and efficient machine learning algorithms
## Machine learning in IoT Security
- In Novel Approach for Detection of IoT Generated DDoS Traffic Cvitic et al. propose a conceptual model for detection of DDoS attacks in IoT networks based on traffic characteristics  
  - They argue that IoT-generated network traffic is clearly distinguishable from human-generated network traffic
  - They assign IoT traffic into three categories: periodic updates, event driven and payload exchange
  - Based on the proposed model DDoS attacks can be categorised as an anomaly to the legitimate profile of IoT traffic for given a device type
  - The authors use suggest boosting machine learning method for network traffic anomaly detection 
- Lopez-Martin et al. use flow statistics-based information from packet header (bytes transmitted, packet interval times, TCP window size...) to develop a network traffic classifier
  - They use dataset consisting of over 250k network flow data-points collected from over 100 distinct services
  - Their classifier is based on a combination of Recurrent Neural Network and Convolutional Neural Network
  - Their best models can classify the service being used (HTTP, Telnet, Youtube, Google, etc.) with 96.32% of accuracy based on network flow data
  - Furthermore, they discuss the importance of flow data features in context of classification accuracy
- Sivanathan et al. show over 99% accuracy for classifying the identity of IoT devices based on their network activity
  - They collect network traffic data for smart environment consisting of 28 different devices (Cameras, lights, sensors, etc.) over 6 months
  - They present insights into the data using statistical features such as port numbers, cipher-suites and signalling patterns
  - They propose a state-of-the-art performance multi-stage machine learning classifier and discuss trade-offs for deploying their solution for real-time use
- Al-Garadi et al. present a survey on Deep Learning methods for IoT security
  - They introduce layers of the IoT system and picture various IoT specific attack surfaces and threats
  - They review and discuss various ML/DL methods for IoT security in context of advantages, shortcomings and opportunities of each method
  - Furthermore, they provide a comprehensive overview of studies applying ML/DL methods on different IoT Layers (Perception, Network, Application)
  - Finally, they discuss challenges, open issues and future directions for using ML/DL techniques in IoT security
## References
[detection_of_IoT_botnet_attacks_N_BaIoT Data Set](https://archive.ics.uci.edu/ml/datasets/detection_of_IoT_botnet_attacks_N_BaIoT)

[Learning-Driven Detection and Mitigation of DDoS Attack in IoT via SDN-Cloud Architecture](https://ieeexplore.ieee.org/abstract/document/8993716)

[Novel approach for detection of IoT generated DDoS traffic](https://link.springer.com/article/10.1007/s11276-019-02043-1)

[Network Traffic Classifier With Convolutional and Recurrent Neural Networks for Internet of Things](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=8026581)

[A Survey of Machine and Deep Learning Methods for Internet of Things (IoT) Security](https://www.researchgate.net/publication/340813643_A_Survey_of_Machine_and_Deep_Learning_Methods_for_Internet_of_Things_IoT_Security)

[Machine Learning DDoS Detection for Consumer Internet of Things Devices](file://../refs/1804.04159.pdf)

[Boosting-Based DDoS Detection in Internet of Things Systems]()
[Detection of known and unknown DDoS attacks using Artificial Neural Networks]()