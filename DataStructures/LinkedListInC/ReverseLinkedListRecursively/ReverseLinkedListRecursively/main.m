//
//  main.m
//  ReverseLinkedListRecursively
//
//  Created by Ayuna Vogel on 3/6/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Node {
    int data;
    struct Node *next;
};

struct Node *head;

struct Node* insert(struct Node *head, int data) {
    
    struct Node *temp = (struct Node*)malloc(sizeof(struct Node));
    temp->data = data;
    temp->next = nil;
    
    if (head == nil) head = temp;
    else {
        struct Node *temp1 = head;
        while (temp1->next != nil) temp1 = temp1->next;
        temp1->next = temp;
    }
    return head;
}


struct Node* reverseRecursively(struct Node *p) {
    // base case
    
    if (p->next == nil) {
        head = p;
//        printf(" When p.next is nil (base case), no more recursive calls are added to stack. \n The last node in the linked list becomes the head of the list. \n Head is now at %d. \n\n", head->data);
        return head;
    }
    
//    printf(" p in recursive call stack is %d \n", p->data);
    reverseRecursively(p->next);
    
//    printf("p is now going off the recursive call stack in reverse order: p is %d \n\n", p->data);
    
    struct Node *q = p->next;
//    printf(" q = p.next -> %d \n\n", q->data);

    q->next = p;
//    printf(" q.next = p -> %d \n\n", p->data);

    p->next = nil;
//    printf(" p.next = nil -> the last node is %d and it has a nil pointer \n\n", p->data);
    
    return head;
}

void print(struct Node *p) {
    if (p == nil) {
        return;
    }
    printf(" %d ", p->data);
    print(p->next);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        struct Node *head = nil;
        
        head = insert(head, 2);
        head = insert(head, 4);
        head = insert(head, 5);
        head = insert(head, 6);
        printf("LINKED LIST IS: \n\n");
        print(head);
        printf("\n\n");
        
        head = reverseRecursively(head);
        printf("REVERSED LINKED LIST IS: \n\n");
        print(head);
        printf("\n\n");
        
    }
    return 0;
}
