# Background and methods

## IoT Architecture

- Perception layer (RFID, Sensors, Bluetooth, NFC)
    - Collects environment data in various forms
        - Motion
        - Temperature
        - Video material
    - Restrictions in terms of data transmission rate, compute and energy consumption
- Network layer (LAN, WiFi, LoRaWAN, 3G, 4G, 5G)
    - Responsible for transmitting the data from the perception layer devices and sensors
- Middleware layer (Cloud, Big data, Databases, Analytics)
    - Facilitates persistence, retrieval and data manipulation
    - Data analysis possible due to high availability of compute
- Application layer (Smart home, Smart health, ...)
    - Presenting data to the users
    - Interaction with the devices possible

## DDoS attacks in IoT
- Denial of service (DoS) attack is a cyberattack in which the adversary's goal is to render a host or network resource temporarily unavailable for other users
- DoS attacks works by overwhelming the victim with superflous amount of requests exhausting its resources such as CPU. memory or bandwith and which results in service interruption
- Distributed denial of service (DDoS) attack is a type of DoS attack where the malicious traffic originates from multiple sources
- These attacks levarage a group of malware infected, bot devices called a botnet which is remotely controlled by an adversary
- The adversary can direct the botnet to perform a DDoS attack
- DDoS attacks are performed in two four steps (DDoS capable iot malwares: comparative analysis):
  - Recruitment: in this phase the adversary performs a scan for a random IP adress range and searches for devices with accessbile SSH, Telnet or other services
    - It tries to exploit security vulnerabilities of these services e.g. using combinations of pre-defined username password pairs
    - The goal of the scanning is to maximize the number of discovered devices with lowest traffic possilbe to remain undetected
  - Exploitation: once the attacker has access to the devices he will install malicious code
    - The malware can remove other type of malware to have more resources, especially on IoT devices
    - The malware can perform further scans searching for other vulnerable machines
  - Communication: the attacker leverages Command and Control infrastructure to manage the devices
    - Can schedule attacks, upgrade malware, manage uptime
    - Common communication protocols include IRC, HTTP and peer-to-peer
  - Attack: the controlled devices start to send requests to overwhelm the victim
    - Use fake IP adress in packet header to disguise their identity
- Defence mechanisms include mitigation techniques to reduce the scale of the attack and detection techniques for discovering malware and DDoS traffic 

## Botnets
- Botnet is a group of internet-connected devices which execute malware designed to perform malicioious activities such as sending spam or DdoS
- The control over a botnet occurs via a dedicated host called botmaster
- Botnet sizes can range from a few hundred up to tens of thousands and millions of devices
- Their existence may remain undetected for years
- IoT devices play key role in the effectivenes of DDoS attacks by providing uninterrupted connectivity, low security standards and large representation
- A recent linux-based botnet called MIRAI caused the largest DDoS attack recorded so far with a flooding rate peaking at 1.2 Tpbs
- The same botnet was responsible for attacking a US-based DNS provider Dyn resulting in limited access to major internet services such as Reddit, Netflix and Twitter across the European Union and United states
- The attack exploited application layer and appeared as legitimate traffic thus difficult to filter
- Mirai infected IoT devices exposing Telnet or SSH by brute forcing the login using a dictionary of default username password pairs
- Mirai scanned IP addresses for devices that exposed SSH, Telnet or other services and tried to brutforce the access using a dictionary of default username and password pairs
- Upon discovering a vulnerable device the combination of its IP and credentials including additional device metadata will get stored on a dedicated command and control server
- In the next step, the C&C server infects the devices by delivering the malware via ftp or wget for the specific hardware architecture e.g arm, mipcs, sparc, powerpc etc.
- The infected devices become a part of the Mirai botnet and can communicate with the C&C server
- To avoid detection the malware loader deletes itself after the installation and the malware code runs completely on memory
- The botmaster can instruct the infected devices to perform multiple types DDoS attacks or expand the botnet by scanning for additional vulnerable devices  
- Since the source code for Mirai became open source in 2016, a range of similar variants emerged, all competing for vulnerable devices

## Deep learning
- A subcategory of machine learning that innovated the field of artifical intelligence in fields such as image processing, pattern recognition and computer vision
- Deep learning networks leverage raw data to extract non-linear, high-level features and learn to classify instances similar to these seen in training 
- Thanks to recent advancements in hardware resources, especially GPUs and emergence of powerful algorithms, deep learning outperforms traditional machine learning methods in a variety of tasks
- The main benefit of deep learning over machine learning is that it does not require manual feature selection and engineering
- The deep network structure allows storing high-level understanding of data which facilitates inference on resource constrained networks and devices  
- In the domain of cyber-security deep learning showed high potential for detection and classification of malware, intrusion detection and botnet detection 
  - Deep learning in android malware detection. ACM SIGCOMM
  - Android malware characterization and detection using deep learning.
  - Malware classification with recurrent networks. In Proceedings of the 2015 IEEE International 
  - Deep neural network based malware detection using two dimensional binary program features
  - A robust and scalable approach toward detecting malware-infected devices.
- 
### Deep neural networks
### Artificial Neural Networks
- Also known as multilayer perceptron (MLP) is a feed forward artificial neural network that consists of at least three layers of nodes which are input, hidden and output layer.
  - Except the input nodes each node applies a nonlinear activation function to its input
  - The use of nonlinear activation functions is crucial for achieving approximation of nonlinear functions
  - Each node has connection to all nodes in the previous and next layer called weights
  - A forward pass computes a weighted sum of the inputs for each node and applies an activation function for each layer except the input
  - The network's output contains the result which describes the prediction
  - A backward pass computes network's error based on the predicted and the target values
    - The network's weights are adjusted using the backropagation algorithm to minimise the error
    - Learning takes place in a process of gradient descent in which a set of networks weights gets updated iteratively to decrease network's error function
  - Training takes place by feeding data into the input layer, computing a forward and a backward pass
    - In each pass the network sees the training data once
    - The network learns by iteratively minimising the error in each pass

### Convolutional neural networks
- Is a supervised artificial neural network that can process multidimensional inputs such as images or spectograms of audio
- They are used for problems that benefit from retaining spatial information
- The network is a combination of convolutional and pooling layers for feature extraction and artificial neural network for classification
- Convolutional neural network works by shifting a filter across the input, computing a dot product and passing the output through an activation function
- The pooling layer performs a nonlinear downsampling of the input to reduce the size of feature maps and therefore the number of trainable parameters
- These layers occur repeatedly in the architecture following one or more convolutional layers
- The training works in a similar manner as with conventional artificial neural networks by using gradient descent algorithm
- Convolutional neural networks have a broad range of application including image and audio processing, object recognition and anomaly detection 

### kNN
- K-Nearest Neighbours algorithm is an unsupervised machine learning algorithm that categorizes instances of data based on a distance metric
- It works by placing the training data in an n-dimensional vector space, so there is no training involved
- It classifies new samples by selcting the closest k neighbours of the given instance based on the majority of votes of its neighbours
- For instance if the neighbours belong to a class A the unseen sample is classified as A
- This method is mostly used for data clustering and finds its application in anomaly detection

### Deep autoencoders
- Autoencoder is an unsupervised artificial neural network that takes input vector and tries to reconstruct it
- It consists of two parts: encoder and decoder
- The encoder is an artificial neural network in which each hidden layer is smaller than the previous one
- The objective of the encoder is to learn low dimensional representation of the input data
- The decoder is an artificial neural network that takes encoder's output vector as input and performs up-sampling back to the original size
- The training takes place by a forward and a backward pass, same as in the conventional neural network
- Autoencoders find use in anomaly detection, facial recognition and image processing


## Performance metrics
- There are several metrics used to describe the performance of machine learning and deep learning models
- The use of these metrics depends on the nature of classification task.
  - For binary classification there is accuracy, precision, recall, F1 score and area under curve (AUC) metric
  - For muliclass problems researchers use accuracy or cohen's kappa
- Derivation of these values is possible by setting a confusion matrix
- The primary performance indicator among the reviewed studies is accuracy which is the ratio of correctly classified examples among all examples
- Comparison of machine learning models based on accuracy is only valid if all models in the publications used the same data for training and test


## McDermott
- BiLSTM to identify four types of Mirai botnet attacks.
- Used word embeddings for the raw string data in the packets
- Uses own dataset by emulating Mirai botnet traffic in a lab with IoT camera devices
- Try four Mirai attack types: UDP flood, ACK flood, DNS ans SYN
- Accuracy ranges from 91.95 to 99.99% depending on the type of attack (read in the paper exactly)

### Types of attacks
- Zero Day DDoS Attacks
  - Using unknown security issues for performing a DDoS attack
- Infrastructure Layer attacks
    - Exploit vulnerabilities of the IoT transport or network layer
    - Volume-based
        - Simplest to perform
        - Main goal is to overwhelm the victim by the sheer amount of traffic
        - IP spoofing
            - Using fake source IP address for requests to overwhelm victim hosts with traffic
            - Hiding identity of the malicious source
        - Amplification
            - Allows for overwhelming of victim host with large amount of traffic under constrained bandwidth
            - Used in combination with IP spoofing
            - Attacker requests large responses from a server (e.g large DNS records) and floods the victim with large
              amount of data
            - The idea here is that the request is a lot smaller than the response thus allowing the attacker to magnify
              the attack scale
            - Often the attackers uses the broadcast IP address to send one packet to all devices in the network with a spoofed source IP address 
        - Examples are UDP/TCP and ICMP floods
    - Protocol-based
      - Exploits security flaws in network layer to consume all the processing capacity
      - ACK and SYN flood: attacker starts TCP handshake but doesn't finish making the server wait
- Application Layer attacks
    - Exploits vulnerabilities of web servers by leveraging HTTP requests
    - The goal is to start a backend process that overly consumes host resources
    - The attack traffic is usually legitimate thus making it difficult to detect and mitigate
    - IoT botnets facilitate application layer traffic by providing a source of legitimate traffic

### Role of IoT botnets in DDoS attacks
- IoT devices are an easy target due to outdated software or misconfiguration
- The amount of unsecure IoT devices provides a good set-up for performing large scale DDoS attacks
- IoT devices remain connected to the internet for the whole time
- Due to constrained resources it's difficult to provide advanced security for IoT devices
### Defence mechanisms

- Traditional DDoS Defence
    - Mitigation based
    - Detection based
        - Network
        - Host
- IoT Specific DDoS Defense
    - Malware Detection
    - Prevention based

### IoT Specific Machine Learning defences
- On device
    - Convolutional Neural Networks
        - Training in the cloud with larger amounts of data with GPU
        - Once trained it provides a lightweight classifier to run on device (efficient in test phase)
        - Doesn't require feature engineering
        - Outperforms signature based malware detection in terms of accuracy and local storage
        - Used for preliminary malware detection on device
        - Convert malware binary to an 8 bit grayscale image
            - 98% classification accuracy on malware database
            - Resilient to encrypted malware variants
- In the cloud (2-tier architecture)
    - Additional server in the cloud that performs training and the inference
- Network based
    - Auto encoders
        - Trained using examples of normal traffic flow within the network for each device
        - The auto encoder learns to compress and reconstruct packet snapshots
        - If the reconstruction fails, an anomalous packet has been detected
        - Method outperforms traditional approaches in true positives and false positives ratio as well as detection
          time
        - It provides a viable solution for real time DDoS detection in a network e.g. enterprise or home network
        - Doesn't require annotated data

# References

[Malware Images: Visualization and Automatic Classification](https://dl.acm.org/doi/pdf/10.1145/2016904.2016908)

[Lightweight Classification of IoT Malware based on Image Recognition](https://arxiv.org/pdf/1802.03714.pdf)

[A survey of DDoS attacking techniques and defence mechanisms in the IoT network]()

[A Survey of Machine and Deep Learning Methods for Internet of Things (IoT) Security]()
