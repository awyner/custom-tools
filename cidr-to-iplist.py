# Written by Alex Wyner
# Simple script to convert CIDR ranges to a list of IPs

from ipaddress import IPv4Network
from sys import argv
import time

def read_file(filename):
    ips = []
    in_file = ''
    try:
        in_file = open(filename, encoding='utf-8')
        for line in in_file:
            line = line.strip()
            for ip in IPv4Network(line, False):
                ips.append(str(ip))
    except FileNotFoundError:
        print('[!] Error: File not found')
        exit(1)
    finally:
        if type(in_file) != str:
            in_file.close()
    return ips


def write_file(filename, ip_list):
    try:
        out_file = open(filename, 'w', encoding='utf-8')
        for ip in ip_list:
            out_file.write(ip + "\n")
    finally:
        out_file.close()


if __name__ == '__main__':
    try:
        assert '.txt' in argv[1]
        ip_list = read_file(argv[1])
        if len(argv) == 2:
            write_file('ip-list-' + str(int(time.process_time()*(10**6))) + '.txt', ip_list)
        else:
            write_file(argv[2], ip_list)
    except IndexError:
        print('Usage: cidr-to-iplist input-file [output-file]')
        exit(1)
    except AssertionError:
        print('[!] Error: Input must be text file')
        exit(1)
