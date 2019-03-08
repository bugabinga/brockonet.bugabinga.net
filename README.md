# Brockonet

Eine Provisionierung von [Humhub] für den Kindergarten meines Sohnes.

## Voraussetzungen

Die Skripte in diesem Repo machen die Annahme, dass [Humhub] auf 2 Arten von Ubuntu-Hosts installiert werden soll.

- `webservers`
- `dbservers`

Diese dürfen auf die selbe Maschine zeigen.
Eine Möglichkeit, [Ansible] die Adressen der Hosts zu übergeben ist eine __hosts__-Datei im Repo anzulegen:

`hosts`:

```toml
[webservers]
localhost

[dbservers]
localhost
```

## Ausführen

Die Skripte lassen sich mit [Ansible] wie folgt ausführen:

```sh
 ansible-playbook -i hosts site.yml
 ```

 > Nimmt an, dass die Hosts in einer `hosts`-Datei definiert sind.

## Quellen

- https://github.com/ansible/ansible-examples
- http://docs.humhub.org/admin-requirements.html
- https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html

## TODOs

- [ ] Geheimnisse in [Vault] speichern
- [ ] Firewall konfigurieren
- [ ] Humhub installieren
- [ ] Humhub konfigurieren
- [ ] LetsEncrypt-Zertifikate

[Humhub]: https://humhub.org/de
[Ansible]: https://ansible.org
[Vault]: https://docs.ansible.com/ansible/2.4/vault.html
---
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.