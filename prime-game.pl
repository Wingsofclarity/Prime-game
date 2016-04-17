def inplutt(s,a):
	a=input(s)
	#print(s)
	return a

def isDivideable(a,b):
	return a%b == 0

def smallestDivider(a):
	i=2
	while (i<(a)):
		if (isDivideable(a,i)):
			return i
		i=i+1
	return a


def primeFactor(a):
	de = smallestDivider(a)
	if (de==a):
		return [a]
	return [de]+primeFactor(a/de)

def answerToArrayInt(string):	
	r = [];
	a = 0;
	for i in string:
		if (i>='0' and i<='9' ):
			a=a*10
			a = a + int(i)
		elif i is '*' and a!=0:
			r=r+[a]
			a=0
		else:
			print ("Error")
			exit()
	if a!=0:
		r=r+[a]
	return r

def sameContent(a,b):
	a.sort()
	b.sort()
	return a == b

def product(lst):
	a=1;
	for x in lst:
		a=x*a;
	return a;





#Main
numerator = inplutt("Enter a number: ", 9234583);
numerator = abs(int(numerator));
primes = primeFactor(numerator);
primes = [int(i) for i in primes];
answer = inplutt("Enter prime factors of "+str(numerator)+". "+str(numerator)+" = ","20567*449");
answer = answerToArrayInt(answer);
answer = [int(i) for i in answer];
if (sameContent(answer,primes)):
	print ("Correct! The prime factors of " +str(numerator)+ " are: "+ str(primes).strip('[]'))
else:
	print ("Fail! The prime factors "+str(numerator)+" are: "+str(primes).strip('[]'))
	print ("Your answer: "+str(answer).strip('[]'))
	answer_total=product(answer);

	if (answer_total == numerator):
		print("Good news is that " +str(answer).strip('[]') +" multiplied is " + str(numerator)+".");
		for a in answer:
			if (smallestDivider(a)!=a):
				print (str(a) + " is not a prime number.");
				small_primes = primeFactor(a);
				small_primes = [int(i) for i in small_primes];	
				print ("Prime factors of " + str(a)+ " is " +str(small_primes).strip('[]'));
	else: 
		print(str(answer).strip('[]') +" multiplied is " + str(answer_total)+".");
