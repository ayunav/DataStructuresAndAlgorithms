//
//  main.m
//  PrintLinkedListRecursively
//
//  Created by Ayuna Vogel on 3/6/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Node {
    int data;
    struct Node *next;
};


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


void printRecursively(struct Node *p) {
    if (p == nil) {
        return;
    }
    printf(" %d ", p->data);
    printRecursively(p->next);
}

void reversePrintRecursively(struct Node *p) {
    if (p == nil) {
        return;
    }
    reversePrintRecursively(p->next);
    printf(" %d ", p->data);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        struct Node *head = nil;
        
        head = insert(head, 2);
        head = insert(head, 4);
        head = insert(head, 6);
        head = insert(head, 5);
        
        printf("Print the linked list using recursion \n");
        printRecursively(head);
        printf("\n\n\n");
        
        printf("Reverse print the linked list using recursion \n");
        reversePrintRecursively(head);
        printf("\n\n\n");

    }
    return 0;
}
