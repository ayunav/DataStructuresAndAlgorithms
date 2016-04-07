//
//  main.m
//  DoublyLinkedList
//
//  Created by Ayuna Vogel on 3/6/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Node {
    int data;
    struct Node *next;
    struct Node *prev;
};

struct Node *head;

struct Node* getNewNode(int x) {
    // Creates a pointer to an address in heap memory.
    // Variable lives through the entire lifetime of the application and doesn't deallocate after a function finished running.
    struct Node *newNode = (struct Node *)malloc(sizeof(struct Node));
    newNode->data = x;
    newNode->prev = nil;
    newNode->next = nil;
    return newNode;
}

void insertAtHead(int x) {
    // local variable, lives only inside this function and deallocates when the function finished executing.
    struct Node *newNode = getNewNode(x);
    if (head == nil) {
        head = newNode;
        return;
    }
    head->prev = newNode;
    newNode->next = head;
    head = newNode;
}

void insertAtTail(int x) {
    struct Node *newNode = getNewNode(x);
    if (head == nil) {
        head = newNode;
        return;
    }
    struct Node *temp = head;
    while (temp->next != nil) {
        temp = temp->next; 
    }
    temp->next = newNode;
    newNode->prev = temp;
}

void print() {
    struct Node *temp = head;
    printf("Forward: ");
    while (temp != nil) {
        printf("%d ", temp->data);
        temp = temp->next;
    }
    printf("\n");
}

void reversePrint() {
    struct Node *temp = head;
    if (temp == nil) {
        return;
    }
    while (temp->next != nil) {
        temp = temp->next;
    }
    printf("Reverse: ");
    while (temp != nil) {
        printf(" %d ", temp->data);
        temp = temp->prev;
    }
    printf("\n\n");
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        head = nil;

        insertAtHead(1); print(); reversePrint();
        insertAtHead(2); print(); reversePrint();
        insertAtHead(3); print(); reversePrint();
        
        insertAtTail(8); print(); reversePrint();
    }
    return 0;
}
