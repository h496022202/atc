apt-get install python
curl https://bootstrap.pypa.io/2.7/get-pip.py --output ~/get-pip.py
python ~/get-pip.py

pip install django=1.10.6 -i https://pypi.tuna.tsinghua.edu.cn/simple

pip install atc_thrift atcd django-atc-api django-atc-demo-ui django-atc-profile-storage   -i https://pypi.tuna.tsinghua.edu.cn/simple

cd ~
django-admin startproject atcui

git clone https://github.com/facebookarchive/augmented-traffic-control.git


