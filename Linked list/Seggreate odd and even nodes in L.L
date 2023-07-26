ListNode* oddEvenList(ListNode* head) {
        if(head==NULL||head->next==NULL||head->next->next==NULL)
        {
            return head;
        }
        ListNode* odd=head;
        ListNode* even=head->next;
        ListNode* oddhead=head;
        ListNode* evenhead=even;

        while(odd->next!=NULL&&even->next!=NULL)
        {
            odd->next=odd->next->next;
            odd=odd->next;
            even->next=even->next->next;
            even=even->next;
        }
        odd->next=evenhead;
        return oddhead;
    }
