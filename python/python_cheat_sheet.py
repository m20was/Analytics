''' https://www.youtube.com/watch?v=L5sZ6WgOnj0&t=1162s '''
'''
# Identifiers

name1 = 'Manish'
name2 = 'Biswas'
age = 29
print(name1,name2,':',age)


# Arithmetic Operator
a=8
b=4
print(a+b,a-b,a/b,a*b,a%b,a//b,a**b)

# Assignment Operator ( += , -= , *= , /= , %= , //= , **= )
a = 12
a = a + 5
print(a)
a += 5
print(a)

# Relational Operator ( == , != , < , > , <= , >= )
a = 45
b = 55

print('a > b', a > b)
print('a < b', a < b)
print('a >= b', a >= b)
print('a <= b', a <= b)
print('a == b', a == b)
print('a != b', a != b)

# Logical Operator (and , not , or)
x = True
y = False

print('print x and y :',x and y)
print('print not y :',not y)
print('print x or y :',x or y)

# User input - #input() return string value, typecast to int for int values

english_marks = int(input('Enter marks in English\n')) 
maths_marks = int(input('Enter marks in Maths\n'))
science_marks = int(input('Enter marks in Science\n'))

average_marks = (english_marks + science_marks + maths_marks) / 3
print('average marks are', average_marks)


# Condition

num = 10

if num > 0:
    print("Positive number")
elif num == 0:
    print("Zero")
else:
    print("Negative number")

# range

a = list(range(10))
print(a)

b = list(range(5,10))
print(b)

c = list(range(5, 11, 2))
print(c)

# Loop
#for
for x in range(10):
 	print(2*x, end=", ")

a = ['Manish', 'Rohit', 'Shivam']
for name in a:
 	print('\n',name*4 , end=", ")
 	
for i in range(10):
 	if i > 6:
 		break
 	print(i)

for i in range(10):
	if i == 8:
		continue
	print(i)
	
# while
n=5
while n >= 0:
 	print(n)
 	n -= 1

''' 
# Strings
#name = """Manish
#Dilip 
#Biswas"""
#paragraph = ''' This is a 
#multiline
#String
#paragraph. This is for testing'''

#print(name)
#print(paragraph)

'''
fruit = "Apple"
print(fruit[4])
print(fruit[-2])

my_char = fruit[2];
print(my_char)


s ='abcde'
print(s[1:4])
print(s[:4])
print(s[3:])
print(s[0:5:2]) #ace start/end/jump
print(s)
print(s[::-1])
print(s[0:5:-1])
print(s[-1:0:-1])
print(s[-1:0:1])

a = "abc"
for my_char in a:
 	print(my_char*2)
 	
b = 'def'
c = a+b
#c = a*3
print(c)

password = "abcdABA$"
print(password.isalpha())

s = "ABCDE$%"
print('s.isalpha', s.isalpha())
print('s.isdigit', s.isdigit())
print('s.islower', s.islower())
print('s.isupper', s.isupper())

print('s.lower', s.lower())
print('s.upper', s.upper())

x = '    abc     '
print(x.lstrip())

# Lists (Heterogenous in Natiire)

my_list = [1,2,3,'Manish']
print(my_list)

name = 'Manish'
name = 234
print(name)

fruits = ["Apple",'Guava','Papaya']
fruits[1] = 'Mango'

print(fruits[-1])
print(fruits)
del fruits[0]
print(fruits)

num = [0,1,2,3,4,5]
print(num[2:5])
print(num[::-1])
print(num[-1:0:-1])


#a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

a = [x for x in range(100) if x%2 == 1] #[expression, loop, if conditon]
print(a)

b = [3**i for i in range(10)]
print(b)

a=[1,2,3]
fruit = ['Banana','Apple','Kiwi']

print(a)
a.append(4)
print(a)
a.insert(1,4)
print(a)
a.sort()
print(a)
a.pop(0)
print(a)
a.clear()
print(a)

fruit.reverse()
print(fruit)
print(fruit.index('Apple'))
print(fruit.count('Kiwi'))



# Tuples - Similar to List. items are in () seprated by commas. elements cannot be changed once assigned

s = "Manish"
#s[0] = 'C'
print(s)

a = ('M', 'a', 'n', 'i','s','h')
#a[0] = 'c'
print(a)

a = [6, 2, 3, 9, 1, 6, 4, 5]
print(len(a))
print(max(a))
print(min(a))

s = "Manish"
print(list(s))

print(sum(a))

for element in a:
 	print(element * 2, end = " ")

 
# Dictionary - unordered collection items

a = {1, 2, 4, 6, 4, 6, 1}

for element in a:
 	print(element*2)
 	
a = {1, 2, 4, 6, 4, 6, 1}

for element in a:
 	print(element*2)
 	

marks = {'Kucchu': 34, 'Puchhu': 45,
			'Anuj': 68, 23: 58, 56: 23}
print (marks)
marks['Rohit'] = 99
marks['Anuj'] = 45
print(marks[23])

squares = {1: 1, 3: 9, 5: 25, 7: 49, 9: 81}
for i in squares:
    print(i, squares[i])

   
# Functions - built In/ Modules/User Defined

#import math as m
from math import *
#print(m.pi)
print(sin(3.14))


def greetings(names):
	for name in names:
		print('Hello', name)

names = ['Manish', 'Shivam', 'Rohits']
greetings(names)


def greet(name, dish="Pasta"):
 	print('Good Morning,', name)
 	print('Please eat', dish)

greet('Manish', 'Samosa')
 

def sum_of_list(a):
    print('Calculating...')
    return sum(a)

marks = [45, 16, 87, 98, 45]
sum_of_marks = sum_of_list(marks)
print('my sum of marks', sum_of_marks)

'''
# Files

f = open('data_folder/data.txt', 'r') # r/w

for line in f:
    print(line)


a = []
a[4]

print(f.readline()) # reads 1st linee
print(f.readline())
print(f.readline())

# with open('data_folder/data.txt') as f:
for line in f:
    print(line)

f.seek(20)
print(f.read(10))
f.close()

lines_data = ['Shivam\n', 'Gaurav\n', 'Kite\n']
with open('data_folder/write_file.txt', 'a') as f: # a - append/w - rewrite after c;earing all content 
	f.write('Manish\n')
	f.writelines(lines_data)

