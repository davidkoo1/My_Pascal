#include <bits/stdc++.h>
#include <string>
using namespace std;

int strtoint(const string &n){
    stringstream str;
    str << n;
    int ret;
    str >> ret;
    return ret;
}

int main(){
    string s; cin >>s;
    string N1, N2, N3, N4; cin>>N1>>N2>>N3>>N4;
    int N1num=0, N2num =0, N3num=0, N4num=0,N1count = 0,N2count = 0,N3count = 0,N4count = 0;
    for(int i = 0; i<s.length(); i++){
        if(s[i]==N1[0]){N1num = i; N1count++;}
        if(s[i]==N2[0]){N2num = i; N2count++;}
        if(s[i]==N3[0]){N3num = i; N3count++;}
        if(s[i]==N4[0]){N4num = i; N4count++;}
    }
    string sum, fN1, fN2;
    for(int i = 0; i<N1count;i++){
        fN1+=N1num;
    }
    for(int i = 0; i<N2count; i++){
        fN2+=N1num;
    }
    sum=(strtoint(fN1)+strtoint(fN2));
    cout<<sum;
}
