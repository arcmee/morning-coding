


void main(){
  print(maxProfit([7,1,5,3,6,4]));
  print(maxProfit([7,6,4,3,1]));
}

int maxProfit(List<int> prices) {
  int result = 0;
  int currentIndex = 0;
  print("---------------");
  for(var first in prices){
    ++currentIndex;
    for( int i = currentIndex+1 ; i < prices.length; ++i){
      result = prices[i] - first > result ? prices[i] - first : result;
    }
  }
  if(result < 0){
    return 0;
  }
  return result;
}