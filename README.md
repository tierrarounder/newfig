# newfig
modified figlet based on shy ruparel's dockercon 2022 presentation
Shy-B 21-end minute mark

[[[to continue must install Visual Studio Code for ubuntu https://code.visualstudio.com/Download]]
https://code.visualstudio.com/docs/setup/linux

cd Downloads [[after downloading , doh!]]

sudo apt install ./code_1.68.0-1654690107_amd64.deb

[[go back to dockersand/figlet]]

touch Dockerfile
[[run Visualstudio and open Dockerfile]]
[[at 23 minute mark]]

[[WORKFLOW: Edit Dockerfile, save, then run 'docker build' command]]


FROM fedora:latest
RUN yum install -y figlet
[[save]]

docker build --tag newfig .
[[ the '.' will build the image in current directory]]

docker run -it newfig
figlet -help
figlet -f slant hi docker
figlet -f script hi docker
figlet ur mom
exit [[stops container]]
[[modify Dockerfile by adding line:]]
CMD exec figlet -f slant "ur Mom"
[[save and run]]
docker build --tag newfig .
[[uses cache and only adds changed/new line]]
docker run newfig
             __  ___              
  __  _______   /  |/  /___  ____ ___ 
 / / / / ___/  / /|_/ / __ \/ __ `__ \
/ /_/ / /     / /  / / /_/ / / / / / /
\__,_/_/     /_/  /_/\____/_/ /_/ /_/ 

[[]]

FROM fedora:latest
RUN yum install -y figlet
ENTRYPOINT [ "figlet" ]
CMD ["ur Mom"]
                                    
optiflex@optiflex-Inspiron-570:~/dockersand/figlet$ sudo docker run newfig hi yall
 _     _               _ _ 
| |__ (_)  _   _  __ _| | |
| '_ \| | | | | |/ _` | | |
| | | | | | |_| | (_| | | |
|_| |_|_|  \__, |\__,_|_|_|
           |___/           
optiflex@optiflex-Inspiron-570:~/dockersand/figlet$ sudo docker run newfig
              __  __                 
 _   _ _ __  |  \/  | ___  _ __ ___  
| | | | '__| | |\/| |/ _ \| '_ ` _ \ 
| |_| | |    | |  | | (_) | | | | | |
 \__,_|_|    |_|  |_|\___/|_| |_| |_|
                                     
[[31 mark push to docker hub]]

docker build --tag tierrarounder/newfig:latest .
[[must upgrade to PRO]]

[[ from shy ruparel's ]]

sudo docker pull shyruparel/figlet

sudo docker run shyruparel/figlet
 _   _ _       _ ____    _   _       _   _             
| | | (_)     | / ___|  | \ | | __ _| |_(_) ___  _ __  
| |_| | |  _  | \___ \  |  \| |/ _` | __| |/ _ \| '_ \ 
|  _  | | | |_| |___) | | |\  | (_| | |_| | (_) | | | |
|_| |_|_|  \___/|____/  |_| \_|\__,_|\__|_|\___/|_| |_|
                                                       
sudo docker run shyruparel/figlet uR moM
       ____                    __  __ 
 _   _|  _ \   _ __ ___   ___ |  \/  |
| | | | |_) | | '_ ` _ \ / _ \| |\/| |
| |_| |  _ <  | | | | | | (_) | |  | |
 \__,_|_| \_\ |_| |_| |_|\___/|_|  |_|
                                      
optiflex@optiflex-Inspiron-570:~$ 
