# Content of experiments/verify_env.sh
#!/bin/bash

echo "--- Near-RT RIC Status ---"
ssh "default@192.168.17.135" << EOF
echo "SCTP Modules:"
lsmod | grep sctp
echo -e "\nDocker Status:"
sudo systemctl status docker | head -n 5 # Only show the first few lines
echo -e "\nE2 Simulator Container:"
docker ps | grep e2sim
echo -e "\nK3s Nodes:"
sudo kubectl get nodes
echo -e "\nRIC Platform Pods:"
sudo kubectl get pods -n ricplt
EOF

echo -e "\n--- Non-RT RIC Status ---"
echo "A1 Policy Management Service Container:"
ssh "default@192.168.17.13" << EOF
echo "A1 Policy Management Service Container:"
docker ps | grep policy-agent
EOF

echo -e "\nTesting A1 Connectivity (from Near-RT RIC to Non-RT RIC):"
ssh "default@192.168.17.135" << EOF
curl http://192.168.17.13:8081/a1-policy/v2/policies 
echo ""
curl -k https://192.168.17.13:8433/a1-policy/v2/policies 
echo ""
EOF

echo -e "\n--- SMO Status ---"
echo "Docker Containers on SMO:"
ssh "default@192.168.17.49" << EOF
docker ps 
EOF