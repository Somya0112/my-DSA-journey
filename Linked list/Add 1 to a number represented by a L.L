 *************************************************************************/
Node* reverse(Node* head)
{
    Node* prev=NULL;
    Node* curr=head;
    Node* next=NULL;
    while(curr!=NULL)
    {
        next=curr->next;
        curr->next=prev;
        prev=curr;
        curr=next;
    }
    return prev;
}

Node *addOne(Node *head)
{
    // Write Your Code Here.
    Node* newhead=reverse(head);
    Node* temp=newhead;
    Node* prev=NULL;
    int carry=0;
    while(temp!=NULL)
    {
        int sum=0;
        if(prev==NULL)
        {
            sum=temp->data+1;
        }
        else{
            sum=temp->data+carry;
        }
       
        carry=sum/10;
        temp->data=sum%10;
        prev=temp;
        temp=temp->next;

    }
    if(carry!=0)
    {
        Node* nodenew=new Node(1);
        prev->next=nodenew;
    }
    return reverse(newhead);
}
