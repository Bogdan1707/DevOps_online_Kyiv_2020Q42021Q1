def call(List servers){  

 servers.eachWithIndex { url, idx -> parallel ($idx : {sh "ping  ${url} -c 5"} )}
    
}