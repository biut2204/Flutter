enum list {toan, van, anh}
var list1 = [];

void main(){
  print(list.toan);
  print(list.van.name);
  print(list.values[0].name);
  print(list.values.length);
  list1.add(1);
  list1.insert(1, 2);
  list.values.forEach((i) {
    print(i.name);
  });
  list1.forEach((i) {
    print(i);
  });

  for(int i = 0; i<list.values.length; i++){
    print(list.values[i]);
  }
}