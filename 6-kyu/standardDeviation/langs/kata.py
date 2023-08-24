from math import sqrt

def filter_val(lst):
    original_length = len(lst)
    while True:
        mean = sum(lst) / len(lst)
        std_dev = sqrt(sum((x - mean) ** 2 for x in lst) / len(lst))
        len2 = [vote for vote in lst if mean - 2.5*std_dev <= vote <= mean + 2.5*std_dev]
        
        if len(len2) == len(lst):
            break
        else:
            lst = len2
    return [[original_length, len(lst)], mean, std_dev/sqrt(len(lst))]

print(filter_val([35,34,37,32,33,36,38,32,35,35,36,34,35,100,85,70]))