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

Prüfe [Humhub Requirements] für Mindestanforderungen von [Humhub].

## Abhängigkeiten

```sh
ansible-galaxy install thefinn93.letsencrypt
```

## Ausführen

Die Skripte lassen sich mit [Ansible] wie folgt ausführen:

```sh
ansible-playbook --vault-password-file pass -e @secrets.yaml site.yaml -i hosts
```

 > Nimmt an, dass die Hosts in einer `hosts`-Datei definiert sind.
 > Nimmt an, dass eine Datei `pass` mit Berechtigung *0400* und dem geheimen Passwort der Datei `secrets.yaml` definiert ist.

## Geheimnisse

Geheime Daten können mit [Ansible Vault] wie folgt erzeugt werden.
Wir benötigen ein Passwort für die MySQL-Datenbank, dass geheim ist.

```sh
ansible-vault create secrets.yaml
```

[Ansible Vault]: https://docs.ansible.com/ansible/2.4/vault.html

## Quellen

- https://github.com/ansible/ansible-examples
- http://docs.humhub.org/admin-requirements.html
- https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html

## TODOs

- [ X ] Geheimnisse in [Vault] speichern
- [   ] HUmhub auf Produktionsversion umstellen
- [   ] Humhub optimieren (Cache, Cron Jobs, etc.)
- [   ] Firewall konfigurieren
- [ X ] Humhub installieren
- [ X ] Humhub konfigurieren
- [ X ] LetsEncrypt-Zertifikate

---

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>

[Humhub]: https://humhub.org/de
[Humhub Requirements]: http://docs.humhub.org/admin-requirements.html
[Ansible]: https://ansible.org
[Vault]: https://docs.ansible.com/ansible/2.4/vault.html
