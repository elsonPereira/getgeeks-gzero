from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user(target):

    data = {
        'faker': {
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'pwd123'
        },
        'wrong_email':{
            'name': 'Squall',
            'lastname': 'Leonhart',
            'email': 'squall*ffviii.com',
            'password': 'pwd123'
        },
        'login': {
            'name': 'Elson',
            'lastname': 'Pereira de Brito',
            'email': 'elson@hotmail.com',
            'password': 'pwd123'
        },
        'be_geek': {
            'name': 'Kim',
            'lastname': 'Dotcom',
            'email': 'kim@dot.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '11980707282',
                'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formatando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu.',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
            }
        },
        'short_desc': {
            'name': 'Zell',
            'lastname': 'Dincht',
            'email': 'zell@ffviii.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '21980707288',
                'desc': 'Formato o seu PC.',
                'printer_repair': 'Não',
                'work': 'Ambos',
                'cost': '200'
            }           
        },
        'long_desc': {
            'name': 'Quistis',
            'lastname': 'Trepe',
            'email': 'quistis@ffviii.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '21980707200',
                'desc': 'Instalo Distros Ubuntu, Debian, ElementaryOS, PopOS, Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, RedHat, CentOS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suze, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro Linux, BigLinux, ZorinOS, Unity',
                'printer_repair': 'Não',
                'work': 'Ambos',
                'cost': '150'
            }           
        }
    }
    return data[target]