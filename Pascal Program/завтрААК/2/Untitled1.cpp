#include <bits/stdc++.h>
#include <string>

using namespace std;

string toDoubleSS(int num){
    unsigned long long int i = 1, bin = 0;
    while(num > 0) {
    bin += (num % 2) * i;
    num /=2;
    i *=10;

    }
    string s;
    stringstream out; out<<bin; s=out.str();
    if(s.length() <5){
        while(s.length() != 5) {
        s.insert(s.begin(), '0');
        }
    }
    return s;
}

int main(){
    int n; cin>>n;
    for(int i = 0; i<=n; ++i) {
        cout<<toDoubleSS(i*i)<<endl;
    }
    return 0;
}
