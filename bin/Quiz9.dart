class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.val);

}


int maxDepth(TreeNode? root) {
  if( root == null ) return 0;

  int leftDepth = maxDepth(root.left);
  int rightDepth = maxDepth(root.right);

  return 1 + (leftDepth > rightDepth ? leftDepth : rightDepth);
}

void main(){
  TreeNode root = TreeNode(3);
  root.left = TreeNode(9);
  root.right = TreeNode(20);
  root.right?.left = TreeNode(15);
  root.right?.right = TreeNode(7);

  // maxDepth(TreeNode? root);

  int n = maxDepth(root);
  print(n);
}

// int findLeaf(TreeNode? node, int depth){
//   ++depth;
//   if(node == null){
//     return depth;
//   }
//   findLeaf(node.left, depth); 
//   findLeaf(node.right, depth);
// }