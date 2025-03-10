#include <stdlib.h>

extern int __VERIFIER_nondet_int();

struct list {
  int value;
  struct list* next;
};

struct list* init_list(int n) {
  struct list* curr = NULL;
  struct list* tail = curr;

  for (int j = 0; j < n; j++) {
    curr = malloc(sizeof(struct list));
    curr->value = __VERIFIER_nondet_int();
    curr->next = tail;
    tail = curr;
  }

  return curr;
}

void delete(struct list** head_ptr, int m) {
  struct list* head = *head_ptr;
  if (head == NULL) return;

  struct list* curr = head;
  while(curr->next != NULL) {
    if (curr->next->value == m) {
      curr->next = curr->next->next;
    } else {
      curr = curr->next;
    }
  }

  if (head->value == m) {
    head = head->next;
  }

  *head_ptr = head;
}

int main() {
  int n = __VERIFIER_nondet_int();
  int m = __VERIFIER_nondet_int();
  struct list* head = init_list(n);
  delete(&head,m);
  return 0;
}
