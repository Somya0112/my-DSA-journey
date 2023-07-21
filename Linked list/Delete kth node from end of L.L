ListNode* removeNthFromEnd(ListNode* head, int n) {
      
        ListNode* slow=head;
        ListNode* fast=head;
       
        for(int i=1;i<=n;i++)
        {
            fast=fast->next;
        }

        if(fast==NULL)
        {
            head=head->next;
            return head;
        }

        while(fast!=NULL&&fast->next!=NULL)
        {
            fast=fast->next;
            slow=slow->next;
        }

        slow->next=slow->next->next;
        return head;
        
    }
