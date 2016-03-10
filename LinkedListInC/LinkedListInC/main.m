//
//  main.m
//  LinkedListInC
//
//  Created by Ayuna Vogel on 3/6/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>


struct Node {
    int data;
    struct Node *next;
};

// a variable should be global if it's accessed many times and in many different functions

struct Node *head;


// always inserts in the beginning of the linked list

void insertInTheBeginning(int x) {

    // allocate memory space for the temp variable equal to the size of the struct Node
    struct Node *temp = (struct Node*)malloc(sizeof(struct Node));
    
    temp->data = x;
    
    temp->next = head; // make existing head's memory address a pointer to the next Node in linked list
    
    head = temp; // make the new inserted number the head of a linked list
}

void insertAtNthPosition(int data, int n) {
    
    struct Node *temp1 = (struct Node*)malloc(sizeof(struct Node));
    temp1->data = data;
    temp1->next = nil;
    if (n == 0) {
        temp1->next = head;
        head = temp1;
        return;
    }
    
    struct Node *temp2 = head;
    for (int i = 0; i < n-1; i++) {
        temp2 = temp2->next;
    }
    temp1->next = temp2->next;
    temp2->next = temp1;
}

void deleteAtNthPosition(int n) {
    struct Node *temp1 = head;
    
    if (n == 0) {
        head = temp1->next;
        free(temp1);
        return;
    }
    
    int i;
    for (i = 0; i < n-1; i++) {
        temp1 = temp1->next;
    }
    struct Node *temp2 = temp1->next;
    temp1->next = temp2->next;
    free(temp2);
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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        head = nil;

//        // to insert a new node in the beginning of a linked list
//        printf("How many numbers do you want to insert in the linked list?\n");
//        int n, i, x;
//        scanf("%d", &n);
//        for (i = 0; i < n; i++) {
//            printf("Enter the number to insert in the list: \n");
//            scanf("%d", &x);
//            insertInTheBeginning(x);
//            print();
//            
//        }

        insertAtNthPosition(2, 0); // 2
        print();
        insertAtNthPosition(6, 1); // 2, 6
        print();
        insertAtNthPosition(5, 2); // 2, 6, 5
        print();
        insertAtNthPosition(3, 3); // 2, 6, 5, 3
        print();

        deleteAtNthPosition(3); // 2, 6, 5
        print();
    }
    return 0;
}
