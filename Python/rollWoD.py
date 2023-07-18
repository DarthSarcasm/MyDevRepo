import parse # TODO: needs fixing
import random
import os
import re

def get_inputs(command):
    """
    Args:
    command (string): user's command

    Returns:
    dice (int): # dice to roll
    difficulty (int): diff of roll
    explosive (bool): should 10s explode?
    damage (int) # damage dice to roll [non-zero for attacks only]
    explosive_damage (bool): is the damage explosive? [only for attacks]
    threshold (int): threshold of successes needed
    """
    dice = 0
    diff = 6
    expl = False
    dam = 0
    edam = False
    thre = 0

    # Fighting
    inputs = parse.parse("/w {}d{}", command)
    if(inputs):
        match = re.findall(r"\/w (\d+)(!)*d(\d+)(!)*b*(\d+)*t*(\d+)*", command)
        if(match):
            dice = int(match[0][0])
            expl = (match[0][1] == '!')
            dam  = int(match[0][2])
            edam = (match[0][3] == '!')
            if(match[0][4] != ''):
                diff = int(match[0][4])
            if(match[0][5] != ''):
                thre = int(match[0][5])
        return dice, diff, expl, dam, edam, thre

    inputs = parse.parse("/w {}b{}", command)
    if(inputs):
        match = re.findall(r"\/w (\d+)(!)*b(\d+)t*(\d+)*", command)
        if(match):
            dice = int(match[0][0])
            expl = (match[0][1] == '!')
            diff = int(match[0][2])
            if(match[0][3] != ''):
                thre = int(match[0][3])
        return dice, diff, expl, dam, edam, thre  

    inputs = parse.parse("/w {}", command)
    if(inputs):
        match = re.findall(r"\/w (\d+)(!)*", command)
        if(match):
            dice = int(match[0][0])
            expl = (match[0][1] == '!')
        return dice, diff, expl, dam, edam, thre

    return dice, diff, expl, dam, edam, thre 

def roll(dice, difficulty, explosive, threshold):
    """
    Args:
    dice (int): # dice to roll
    difficulty (int): diff of roll
    explosive (bool): should 10s explode?

    Returns:
    message (str): message to send to the user
    hits (int): number of successes 
    """

    exploded = False
    noSucc = True # keeping this name for humorous reasons
    rolls = []
    successes = 0      
    if(threshold > 0):
        msg = "Rolling %d dice at difficulty %d, threshold %d: (" % (dice, difficulty, threshold)
    else:
        msg = "Rolling %d dice at difficulty %d: (" % (dice, difficulty)
    x = 0

    while x < dice:
        d = random.randint(1,10)
        rolls.append(d)
        if(d >= difficulty):
            if(threshold > 0):
                threshold -= 1
            else:
                successes += 1
                noSucc = False
            if(exploded):
                msg += " ***%d***" % d
            else:
                msg += " **%d**" % d        
        elif(d == 1):
            successes -= 1
            if(exploded):
                msg += " ~~*%d*~~" % d
            else:
                msg += " ~~%d~~" % d
        else:
            if(exploded):
                msg += " *%d*" % d
            else:
                msg += " %d" % d

        exploded = False
        if(d == 10 and explosive):
            dice += 1
            exploded = True
        x += 1


    msg += ") = %d successes" % successes
    if(noSucc and successes < 0):
        msg += "; that's a botch!" 

    return msg, successes

def main():
    roll(6,5,1,1)

if __name__ == "__MAIN__":
	main()
