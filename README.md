# stepik_templates

## Intro 

This repo contains template for Linux Challenge Stepik.org task with support of:
- git repo for scripts,
- random task condition per student,
- secure correct answer storage.

## Usage

- Fork this repo or copy its content to you repo.
- Generate new ssh key pair **ssh-keygen -f new_key**.
- Add new_key.pub as a deploy key to your repo.
- Create new Linux Challenge step.
- Check **Bootstrap virtual machine** at step settings.
- Insert **./scritps/template_bootstrap.sh** content in **Bootstrap** section.
- Insert **./scritps/template_test_scenario.py** content in **Enter your test scenario code below.** section.
- Replace **<RSA_PRIVATE_KEY>** with **new_key** content and **<RSA_PUBLIC_KEY>** with **new_key.pub** content in **Bootstrap** section.
- Replace **<TASKS_REPO>** with ssh clone link to your repo in **Bootstrap** section.
- Replace **<RANDOM_ENCR_KEY_FOR_CORRECT_ANSWER>** with long random string in both  **Bootstrap** and **Enter your test scenario code below.** sections.
- Save step.
