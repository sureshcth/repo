import pdb
pdb.set_trace()


months = ['Jan', 'Feb', 'Mar', 'Apr']
print 'First Month is: ', months[0]
print 'Second Month is: ', months[1]
print 'Fourth Month is: ', months[3]


#Let's add fifth month as 'May'

months.append('May')
print months

#Add Jul

months.append ('Jul')
print months


#Insert June

months.insert(5,'Jun')
print "Printing current list: ", months




#Get 3rd month

print "Index of May is: ", months.index('May')



#Remove Jun

months.remove ('Jun')
print "June is removed. The new list is: ", months



#Add Jul again

months.append ('Jul')
print "List after adding Jul again: ", months
print "count of July is: ", months.count ('Jul')




#Sorting the list

print "Sorted list of months: ", sorted(months)
print "Again printing months: ", months
months.sort()
print "List is sorted for ever:", months




#Reversing

months.reverse()
print months



#Selective listing

print "Printing elements from 2 to 5, excluding 5th: ", months [2:5]


#Deleting an element. Let's delete Jul

del months[2:6]
print "List after deletion is: ", months





#Assignment: Let the list L contain 5 positive integers of your choice. Sort the list first. Then find the sum of the elements of the list using for loop.
