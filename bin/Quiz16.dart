class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}


ListNode? reverseList(ListNode? head) {
  ListNode? next = head?.next;
  head?.next = null;
  return lastNode(next, head);
}

ListNode? lastNode(ListNode? current, ListNode? prev){
  if(current == null) return prev;
  ListNode? next = current.next;
  // print(next?.val);
  current.next = prev;
  // print(current.val);
  // print(prev?.val);
  return lastNode(next, current);
}


void main() {
  ListNode n1 = ListNode(1);
  ListNode n2 = ListNode(2);
  ListNode n3 = ListNode(3);
  ListNode n4 = ListNode(4);
  ListNode n5 = ListNode(5);

  n1.next = n2;
  n2.next = n3;
  n3.next = n4;
  n4.next = n5;

  // ListNode? a = reverseList(n1);

  ListNode? b = reverseList(n1);
  // while(b != null){
    // b = printNext(b);
  // }

  for(int a = 0; a < 6; a++){
    b = printNext(b);
  }

  // ListNode? a2 = reverseList(n1);
}

ListNode? printNext(ListNode? a) {
  print(a?.val);
  return a?.next;
}