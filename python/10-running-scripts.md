# Running Scripts

## myip.py

    import requests

    response = requests.get('https://api.myip.com)

    print(response.content)

## Running myip.py

    python ./myip.py

## Returns

    {"ip":"173.26.223.222","country":"United States","cc":"US"}