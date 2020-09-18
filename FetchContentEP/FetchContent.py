# the target we want to open
# cerner_2^5_2020
import requests
from bs4 import BeautifulSoup 
url="https://alopexoninnovation.com/category/engineering-productivity/"
#open with GET method 
resp=requests.get(url) 
      
#http_respone 200 means OK status 
if resp.status_code==200: 
    print("Successfully opened the web page") 
    print("Some Points on Engineering Productivity As follows:-\n") 
      
# we need a parser,Python built-in HTML parser is enough . 
    soup=BeautifulSoup(resp.text,'html.parser')     
    print(resp.text)
# l is the list which contains all the text i.e news  
    l=soup.find("div",{"class":"entry-content"}) 
#now we want to print only the text part of the anchor. 
#find all the elements of a, i.e anchor 
    for i in l.findAll("p"): 
        print(i.text) 
    else: 
        print("Error") 
