for j in {1..10}; do  
    for i in {1..1000}; do  
        curl -s -o /dev/null -w "%{http_code}\n" http://ab7ea6be8a96545a5b8298ec3133a803-1375744735.us-west-2.elb.amazonaws.com/ &  
    done  
    wait  # Wait for all background curl processes to finish before next iteration
done