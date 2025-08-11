#!/bin/bash
# =====================================
# DevOps Daily Shell Script Pack
# Har command ka kaam + reason + expected output example
# Run: bash devops_daily_practice.sh
# =====================================

echo "======== DevOps Daily Practice Start ========"

# 1. Current working directory
# Kyu likha: Apne present location ka pata lagane ke liye (CI/CD scripts me useful hota hai)
echo "# pwd: Shows current directory"
pwd
# Example Output: /home/ronit
echo "---------------------------------"

# 2. List files with details
# Kyu likha: File permissions, owner, size, modification time check karne ke liye
echo "# ls -l: Lists files in long format"
ls -l
# Example Output: -rw-r--r--  1 ronit ronit  20 Aug 11  file.txt
echo "---------------------------------"

# 3. Disk usage check
# Kyu likha: Production me disk full na ho isliye monitoring ke liye
echo "# df -h: Shows disk usage in human readable format"
df -h
# Example Output: /dev/sda1   50G   30G   20G  60% /
echo "---------------------------------"

# 4. Memory usage check
# Kyu likha: High memory usage alerts ke liye
echo "# free -m: Shows memory usage in MB"
free -m
# Example Output: Mem:  7982  2000  5982
echo "---------------------------------"

# 5. Show top 5 memory consuming processes
# Kyu likha: High CPU/memory hogging process detect karne ke liye
echo "# ps aux --sort=-%mem | head -5"
ps aux --sort=-%mem | head -5
echo "---------------------------------"

# 6. Find a file
# Kyu likha: Scripts me file ka path automatically locate karne ke liye
echo "# find: Search for a file in current dir"
touch search_me.txt
find . -name "search_me.txt"
# Example Output: ./search_me.txt
echo "---------------------------------"

# 7. Search inside a file
# Kyu likha: Logs me specific error/pattern dhoondhne ke liye
echo "# grep: Search keyword inside file"
echo "error: something failed" > log.txt
grep "error" log.txt
# Example Output: error: something failed
echo "---------------------------------"

# 8. Replace text in file
# Kyu likha: Config changes automation ke liye
echo "# sed: Replace text inside a file"
echo "Hello DevOps" > replace.txt
sed 's/DevOps/Linux/g' replace.txt
# Example Output: Hello Linux
echo "---------------------------------"

# 9. Print first column from a file
# Kyu likha: CSV, logs ya IP list me specific data extract karne ke liye
echo "# awk: Print first column"
echo -e "192.168.1.1 server1\n192.168.1.2 server2" > iplist.txt
awk '{print $1}' iplist.txt
# Example Output:
# 192.168.1.1
# 192.168.1.2
echo "---------------------------------"

# 10. For loop example
# Kyu likha: Repeated task automate karne ke liye
echo "# For loop: Print numbers"
for i in {1..3}; do
    echo "Number: $i"
done
# Output:
# Number: 1
# Number: 2
# Number: 3
echo "---------------------------------"

# 11. While loop example
# Kyu likha: Jab tak condition true ho tab tak kaam repeat karne ke liye
echo "# While loop: Count till 3"
count=1
while [ $count -le 3 ]; do
    echo "Count: $count"
    ((count++))
done
# Output:
# Count: 1
# Count: 2
# Count: 3
echo "---------------------------------"

# 12. Check if file exists (if-else)
# Kyu likha: Scripts me file availability check karne ke liye
echo "# If-Else: File check"
if [ -f log.txt ]; then
    echo "log.txt exists"
else
    echo "log.txt not found"
fi
# Example Output: log.txt exists
echo "---------------------------------"

# 13. Create tar archive
# Kyu likha: Backup automation ke liye
echo "# tar: Create archive"
tar -czf backup.tar.gz log.txt
ls -l backup.tar.gz
# Example Output: -rw-r--r-- 1 ronit ronit  120 Aug 11 backup.tar.gz
echo "---------------------------------"

# 14. Download data from URL
# Kyu likha: Deployment scripts me API data fetch karne ke liye
echo "# curl: Download data from example.com"
curl -s https://example.com | head -5
# Example Output: HTML page ka first 5 lines
echo "---------------------------------"

echo "======== DevOps Daily Practice Complete ========"

