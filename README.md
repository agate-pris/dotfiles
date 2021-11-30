# dotfiles

## ToDo

- [ ] Ubuntu
- [ ] Windows
    - [ ] Chocolatey
    - [ ] MSYS2
    - [ ] Ruby
    - [ ] Python
    - [ ] Rust
    - [ ] Unity
    - [ ] Fonts
        - [ ] AAHub Font
        - [ ] IBM Plex
        - [ ] Noto
    - [ ] Syncthing
        - [ ] `.stignore`
- [ ] WSL
- [ ] Git
    - [x] Summary
    - [ ] Git Credential Manager Core
- [x] Final Fantasy XIV
- [ ] userstyles
- [ ] `.bash_aliases`
- [ ] `.bash_profile`
- [ ] `.bashrc`
- [ ] `.gitattributes`

## お役立ちリンク

- [Usage message - Wikipedia](https://en.wikipedia.org/wiki/Usage_message)
    - [Examples](https://en.wikipedia.org/wiki/Usage_message#Examples)
- [Command-line interface - Wikipedia](https://en.wikipedia.org/wiki/Command-line_interface)
    - [Command description syntax](https://en.wikipedia.org/wiki/Command-line_interface#Command_description_syntax)
- [Command shell overview: Scripting; Management Services | Microsoft Docs](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2003/cc737438(v=ws.10)?redirectedfrom=MSDN)
- [Command-Line Syntax Key | Microsoft Docs](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc771080(v=ws.11)?redirectedfrom=MSDN)

## Git

- [Git](https://git-scm.com/)
    - [Git - Book](https://git-scm.com/book/ja/v2/)
        - [Git - 認証情報の保存](https://git-scm.com/book/ja/v2/Git-%E3%81%AE%E3%81%95%E3%81%BE%E3%81%96%E3%81%BE%E3%81%AA%E3%83%84%E3%83%BC%E3%83%AB-%E8%AA%8D%E8%A8%BC%E6%83%85%E5%A0%B1%E3%81%AE%E4%BF%9D%E5%AD%98)
    - [Git - Reference](https://git-scm.com/docs/)
        - [Git - git-config Documentation](https://git-scm.com/docs/git-config)
            - [OPTIONS](https://git-scm.com/docs/git-config#OPTIONS)
                - [`--get`](https://git-scm.com/docs/git-config#Documentation/git-config.txt---get)
                - [`--get-all`](https://git-scm.com/docs/git-config#Documentation/git-config.txt---get-all)
                - [`--get-regexp`](https://git-scm.com/docs/git-config#Documentation/git-config.txt---get-regexp)
                - [`--remove-section`](https://git-scm.com/docs/git-config#Documentation/git-config.txt---remove-section)
                - [`--rename-section`](https://git-scm.com/docs/git-config#Documentation/git-config.txt---remove-section)
                - [`--unset`](https://git-scm.com/docs/git-config#Documentation/git-config.txt---unset)
                - [`--unset-all`](https://git-scm.com/docs/git-config#Documentation/git-config.txt---unset-all)
                - [`-l`](https://git-scm.com/docs/git-config#Documentation/git-config.txt--l)
                - [`--list`](https://git-scm.com/docs/git-config#Documentation/git-config.txt---list)
                - [`--show-origin`](https://git-scm.com/docs/git-config#Documentation/git-config.txt---show-origin)
            - [CONFIGURATION FILE](https://git-scm.com/docs/git-config#_configuration_file)
                - [Variables](https://git-scm.com/docs/git-config#_variables)
                    - [`core.autocrlf`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-coreautocrlf)
                    - [`core.editor`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-coreeditor)
                    - [`credential.helper`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-credentialhelper)
                    - [`diff.guitool`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-diffguitool)
                    - [`difftool.<tool>.cmd`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-difftoollttoolgtcmd)
                    - [`merge.guitool`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-mergeguitool)
                    - [`mergetool.<tool>.cmd`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-mergetoollttoolgtcmd)
                    - [`mergetool.<tool>.trustExitCode`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-mergetoollttoolgttrustExitCode)
                    - [`url.<base>.insteadOf`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-urlltbasegtinsteadOf)
                    - [`url.<base>.pushInsteadOf`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-urlltbasegtpushInsteadOf)
                    - [`user.name`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-username)
                    - [`user.email`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-useremail)
                    - [`author.name`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-authorname)
                    - [`author.email`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-authoremail)
                    - [`committer.name`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-committername)
                    - [`committer.email`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-committeremail)
                    - [`user.useConfigOnly`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-useruseConfigOnly)
- [Git に GitHub の認証情報をキャッシュする - GitHub Docs](https://docs.github.com/ja/get-started/getting-started-with-git/caching-your-github-credentials-in-git)
- [GitCredentialManager/git-credential-manager: Secure, cross-platform Git credential storage with authentication to GitHub, Azure Repos, and other popular Git hosting services.](https://github.com/GitCredentialManager/git-credential-manager)

`url.<base>.insteadOf` （及び `url.<base>.pushInsteadOf` の設定例は `gitconfig.sh` を参照。

## Unity

- [Download - Unity](https://unity3d.com/jp/get-unity/download)
- [Chocolatey Software | Unity Hub (install)](https://community.chocolatey.org/packages/unity-hub)

```install-unity-hub-with-choco.ps1
choco install unity-hub
```
