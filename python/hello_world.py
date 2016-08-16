#!/usr/bin/python

class console:
	def write(text):
		#print(text, end="")
		print text

def main():
	message = str("Hello World")
	message_letters = list(message)

	for i in message_letters:
		console.write(i)

if __name__ == "__main__":
	main()

