//
//  main.m
//  ReverseLinkedListIteratively
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


void insertAtNthPosition(int data, int n) {
    
    struct Node *temp1 = (struct Node*)malloc(sizeof(struct Node));
    temp1->data = data;
    temp1->next = nil;
    if (n == 1) {
        temp1->next = head;
        head = temp1;
        return;
    }
    
    struct Node *temp2 = head;
    for (int i = 0; i < n-2; i++) {
        temp2 = temp2->next;
    }
    temp1->next = temp2->next;
    temp2->next = temp1;
}

void print() {
    struct Node *temp = head;
    printf("List is: ");
    while (temp != nil) {
        printf(" %d", temp->data);
        temp = temp->next;
    }
    printf("\n");
}

struct Node* reverse (struct Node *head) {
    struct Node *current, *prev, *next;
    current = head;
    prev = nil;
    
    while (current != nil) {
        printf("current is %d ", current->data);
        next = current->next;
        printf("next is %d ", next->data);
        current->next = prev;
        prev = current;
        current = next;
    }
    head = prev;
    return head;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        head = nil;
        
        insertAtNthPosition(2, 1); // 2
        print();
        insertAtNthPosition(6, 1); // 6, 2
        print();
        insertAtNthPosition(5, 2); // 6, 5, 2
        print();
        insertAtNthPosition(3, 3); // 6, 5, 3, 2
        printf("\n");
        print();
        
        
        head = reverse(head);
        printf("\nReversed ");
        print();
        printf("\n");
    }
    return 0;
}
