# Docker for medusa

### Run

```bash
docker run -i -t -v PASSWD_TXT:/data/passwd.txt playniuniu/medusa ./medusa -u root -P /data/passwd.txt -f -M ssh -h TARGET_IP
```
