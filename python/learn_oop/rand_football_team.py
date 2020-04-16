import random

class Human():
    """docstring for ClassName"""

    def __init__(self, name):
        self.name = name

class Footbalist(Human):


    def __init__(self, name, team):
        self.name = name
        self.team = team

class Team():

    def __init__(self, name):
        self.team_players = list()
        self.name= name

    def show_team_players(self):
        print("---- " + self.name + " Players ---")
        c = 1;
        for player in self.team_players:
            print('[' + str(c) + ']: ' + player.name)
            c += 1 ;

    def get_random_player(self, footbalists):
        fbs = [x for x in footbalists if x.team == '']
        if len(fbs) > 0:
            rinxex = random.randint(0, len(fbs)-1)
        else:
            rinxex = 0
        rand_footbalist = fbs[rinxex];
        self.team_players.append(rand_footbalist)
        footbalists[footbalists.index(rand_footbalist)].team = self.name


def create_footbalists(names):
    for name in names:
        footbalists.append(Footbalist(name, team=''))

def show_footbalists(footbalists):
    for player in footbalists:
        if player.team == '':
            print('(' + player.name + ', ' + "N/A" + ')')
        else:
            print('(' + player.name + ', ' + player.team + ')')

names = ['hossein', 'maziar', 'akbar', 'nima', 'mahdi', 'farhad', \
        'mohammad', 'khashayar', 'milad', 'mostafa', 'amin', \
        'saeed', 'pooya', 'pooria', 'reza', 'ali', 'behzad', \
         'soheil', 'behrooz', 'shahrooz', 'saman', 'mohsen'] 

footbalists = list()
create_footbalists(names)
show_footbalists(footbalists)

team_a = Team(name='Milan')
team_b = Team(name='Inter')
def main():
    for i in range(0, 11):
        team_a.get_random_player(footbalists)
        team_b.get_random_player(footbalists)

main()
print("-------------------")
print("--- Footbalists ---")
show_footbalists(footbalists)

# team_a.show_team_players()
print("-------------------")
team_a.show_team_players()
print("-------------------")
team_b.show_team_players()