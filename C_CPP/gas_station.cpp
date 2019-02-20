int Solution::canCompleteCircuit(const vector<int> &A, const vector<int> &B) {
    int start = 0;
    int end = 1;
    int n = A.size();
    int currentGas = A[start] - B[start];
    while(start != end || currentGas < 0)
    {
        while(currentGas < 0 && start != end)
        {
            currentGas -= A[start] - B[start];
            start = (start + 1) % n;
            if(start == 0)
            {
                return -1;
            }
        }
        currentGas += A[end] - B[end];
        end = (end + 1) % n;
    }
    return start;
}
