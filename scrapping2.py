import requests

from bs4 import BeautifulSoup as bs

import re

 

def main(url):

 

    response = requests.get(url)

 

    if response.status_code == 200:

        text = response.text

        soup = str(bs(text,'html.parser').body)

        emails = re.findall(r'[\w.+-]+@[\w-]+\.[\w.-]+',soup)

        emails_set= set(emails)

        print(emails_set)
        return emails_set



for i in range(0,20):
    _u =main(f"https://www.google.tn/search?q=email+entreprise+nabeul&ei=XxmjZKq6EJGjkdUPksWKoAg&start={i}&sa=N&ved=2ahUKEwjq5ZePm_P_AhWRUaQEHZKiAoQ4ARDy0wN6BAgOEAQ&biw=1482&bih=746&dpr=1.25")
    with open("file.txt","a+") as f :
        f.write(f"{i} \n \r\n" )

#main("https://www.google.tn/search?q=email+entreprise+nabeul++&source=hp&ei=YxajZLymFq2gkdUP562d6AQ&iflsig=AD69kcEAAAAAZKMkc8BbnR7RMST4OkapwCw-FSc9_jml&ved=0ahUKEwj84_aimPP_AhUtUKQEHedWB00Q4dUDCAk&uact=5&oq=email+entreprise+nabeul++&gs_lcp=Cgdnd3Mtd2l6EAMyCwgAEIAEELEDEIMBMgsIABCABBCxAxCDATIICAAQgAQQsQMyCwgAEIAEELEDEIMBMggILhCABBDUAjILCAAQgAQQsQMQgwEyBQgAEIAEMgUILhCABDIFCC4QgAQyBQgAEIAEOgsILhCKBRCxAxCDAToLCC4QgAQQsQMQgwE6CAguEIAEELEDOhEILhCABBCxAxCDARDHARDRAzoECAAQA1AAWJEVYNMWaABwAHgAgAGYAYgBrwOSAQMwLjOYAQCgAQGgAQI&sclient=gws-wiz")


#main("http://www.nabeul.gov.tn/fr/guide-des-entreprises/")
#main("https://www.tunisieindex.com/entreprises-par-region/Gouvernorat-NABEUL/")
#main("https://www.facebook.com/SNSGROUPENABEUL/")

#main("https://www.google.ca/maps/search/entreprise+nabeul/@36.4575621,10.710267,13.84z?entry=ttu")