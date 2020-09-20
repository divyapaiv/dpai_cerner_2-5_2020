// cerner_2^5_2020
// Can be run with any c++ online compiler eg https://www.tutorialspoint.com/compile_cpp_online.php
#include <iostream>
#include <string.h>
using namespace std;
string hexToASCII(string hex) 
{ 
    string ascii = ""; 
    for (size_t i = 0; i < hex.length(); i += 2) 
    { 
        string part = hex.substr(i, 2); 
        //Converts a string into unsigned long integer
        char ch = stoul(part, nullptr, 16); 
        ascii += ch; 
    } 
    return ascii; 
} 
int main() {
  string EP[8]={"436f6d6d69746d656e742056532044656c6976657261626c65",
  "576f726b","53746f72792031", "53746f72792032",
  "53746f727920506f696e7420313030","537072696e742031","53746f727920506f696e74203130","537072696e742032"};
  string Commits[2]={"53746f72792031","53746f72792032"};
  string Sprints[3]={"537072696e742031","537072696e742032","537072696e742033"};
  cout<<"This is program explains "+hexToASCII(EP[0])<<endl;
  cout<<hexToASCII(EP[1])<<" Is divided into "<<hexToASCII(EP[2])<<" and "<<hexToASCII(EP[3])<<endl;
  cout<<hexToASCII(EP[2])<<" has "<<hexToASCII(EP[4])<<" and It's planned for "<<hexToASCII(EP[5])<<endl;
  cout<<hexToASCII(EP[3])<<" has "<<hexToASCII(EP[6])<<" and It's planned for "<<hexToASCII(EP[7])<<endl;
  cout<<"Our Commit was " <<hexToASCII(Commits[0])<<" and "<<hexToASCII(Commits[1]) <<endl;
  cout<<"If "<< hexToASCII(EP[2]) <<" AND "<<hexToASCII(EP[3])<<"is completed as per the "<<hexToASCII("706c616e6e656420737072696e74")
  <<"\n t is said to be we are on track to meet "<<hexToASCII("64656c6976657261626c6573")<<":)"<<endl;
  cout<<hexToASCII("5468616e6b20796f7520616e642049742773206365726e65725f325e355f32303230")<<endl;
}