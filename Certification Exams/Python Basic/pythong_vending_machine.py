'''
VendingMachine(num_items, item_price)
method buy(req_items, money)
1. if enough items and money available, make transaction
2. if fewer items in machine, ValueError
3. if not enough money for req_items, ValueError
'''

class VendingMachine:
    
    def __init__(self, num_items, item_price):
        self.num_items = num_items
        self.item_price = item_price

    def buy(self, req_items, money):
        if (self.num_items >= req_items and req_items * self.item_price <= money):
            self.num_items -= req_items
            return (money - req_items * self.item_price)
        
        elif (self.num_items < req_items):
            raise ValueError("Not enough items in the machine")
        
        else:
            raise ValueError ("Not enough coins")