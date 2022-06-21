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
