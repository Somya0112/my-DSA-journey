class compare{
     public:
     bool operator()(ListNode* a,ListNode* b){
         return a->val>b->val;
     }
 };
class Solution {
public:
    ListNode* mergeKLists(vector<ListNode*>& lists) {
        int k=lists.size();
        if(k==0)
        return NULL;
        priority_queue<ListNode*,vector<ListNode*> , compare> minheap;
      
        for(int i=0;i<k;i++){
            if(lists[i]!=NULL)
            minheap.push(lists[i]);
        }
        ListNode* head=NULL;
        ListNode* tail=NULL;
        while(!minheap.empty()){
            ListNode* temp=minheap.top();
            minheap.pop();
            if(head==NULL){
                head=temp;
                tail=temp;
                if(tail->next!=NULL)
                minheap.push(tail->next);
            }
            else{
                tail->next=temp;
                tail=temp;
                if(tail->next!=NULL)
                minheap.push(tail->next);
            }
             
            }
        return head;
    }
};
