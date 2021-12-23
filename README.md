# atc
树莓派 atc弱网搭建
``` 
sudo bash create_apd.sh passwd apdssid

sudo bash  ad_passthouth.sh

sudo bash install_python_2.7.sh
``` 
Open atcui/settings.py and enable the ATC apps by adding to INSTALLED_APPS:
``` 
INSTALLED_APPS = (
    ...
    # Django ATC API
    'rest_framework',
    'atc_api',
    # Django ATC Demo UI
    'bootstrap_themes',
    'django_static_jquery',
    'atc_demo_ui',
    # Django ATC Profile Storage
    'atc_profile_storage',
)
```
Now, open atcui/urls.py and enable routing to the ATC apps by adding the routes to urlpatterns:
```
...
...
from django.views.generic.base import RedirectView
from django.conf.urls import include

urlpatterns = [
    ...
    # Django ATC API
    url(r'^api/v1/', include('atc_api.urls')),
    # Django ATC Demo UI
    url(r'^atc_demo_ui/', include('atc_demo_ui.urls')),
    # Django ATC profile storage
    url(r'^api/v1/profiles/', include('atc_profile_storage.urls')),
    url(r'^$', RedirectView.as_view(url='/atc_demo_ui/', permanent=False)),
]
```
Finally, let's update the Django DB:
``` 
python manage.py migrate
```





https://github.com/facebookarchive/augmented-traffic-control
