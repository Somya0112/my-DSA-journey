long long multiplyTwoLists (Node* first, Node* second)
{
    long long N= 1000000007;
    long long num1 = 0, num2 = 0;
    while (first!=NULL || second!=NULL){
          
        if(first!=NULL){
            num1 = ((num1)*10)%N + first->data;
            first = first->next;
        }
          
        if(second!=NULL)
        {
            num2 = ((num2)*10)%N + second->data;
            second = second->next;
        }
          
    }
    return ((num1%N)*(num2%N))%N;
}
