# -*- coding: utf-8 -*-

def test_file_content(s):
    assert s.run('ls /home/box/correct_answer.gpg').succeeded, "Файл /home/box/correct_answer.gpg удален, проверка невозможна."
    s.run('rm /home/box/correct_answer')
    correct_answer = s.run('cd /home/box/ && echo "<RANDOM_ENCR_KEY_FOR_CORRECT_ANSWER>" | gpg --no-tty --passphrase-fd 0 -d /home/box/correct_answer.gpg 2>/dev/null ')
    user_answer = s.run('cat /home/box/answer')
    assert user_answer == correct_answer, "Ваш ответ не совпадает с правильным."
