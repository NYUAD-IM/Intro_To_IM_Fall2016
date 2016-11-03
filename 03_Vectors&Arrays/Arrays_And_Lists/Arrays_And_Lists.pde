
//Arrays
int[] numArray = new int[10];

numArray[0] = 17;
numArray[1] = 13;
numArray[2] = 7;
numArray[3] = 42;

println("Array of Favourite Values:");
for(int i = 0; i < numArray.length; i++){
  //iterate through list
  println(numArray[i]);
}

//Lists:

IntList numList = new IntList();

for(int i = 0; i <= 499; i++){
  numList.append(i*3);
}

numList.set(500,1500);



println("First 500 multiples of 3:");
println(numList);