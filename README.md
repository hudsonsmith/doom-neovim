<div align="center">

# Doom Neovim

![A picture of doom neovim running](doom-neovim.png "Doom Neovim")

![Release](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMTAuNTciIGhlaWdodD0iMzUiIHZpZXdCb3g9IjAgMCAyMTAuNTcgMzUiPjxyZWN0IGNsYXNzPSJzdmdfX3JlY3QiIHg9IjAiIHk9IjAiIHdpZHRoPSI5NC4yOCIgaGVpZ2h0PSIzNSIgZmlsbD0iIzMxQzRGMyIvPjxyZWN0IGNsYXNzPSJzdmdfX3JlY3QiIHg9IjkyLjI4IiB5PSIwIiB3aWR0aD0iMTE4LjI5IiBoZWlnaHQ9IjM1IiBmaWxsPSIjMzg5QUQ1Ii8+PHBhdGggY2xhc3M9InN2Z19fdGV4dCIgZD0iTTE1LjcwIDIyTDE0LjIyIDIyTDE0LjIyIDEzLjQ3TDE3LjIyIDEzLjQ3UTE4LjY5IDEzLjQ3IDE5LjUwIDE0LjEzUTIwLjMwIDE0Ljc5IDIwLjMwIDE2LjA1TDIwLjMwIDE2LjA1UTIwLjMwIDE2LjkwIDE5Ljg5IDE3LjQ4UTE5LjQ3IDE4LjA2IDE4LjczIDE4LjM3TDE4LjczIDE4LjM3TDIwLjY1IDIxLjkyTDIwLjY1IDIyTDE5LjA2IDIyTDE3LjM1IDE4LjcxTDE1LjcwIDE4LjcxTDE1LjcwIDIyWk0xNS43MCAxNC42NkwxNS43MCAxNy41MkwxNy4yMiAxNy41MlExNy45NyAxNy41MiAxOC4zOSAxNy4xNVExOC44MiAxNi43NyAxOC44MiAxNi4xMUwxOC44MiAxNi4xMVExOC44MiAxNS40MyAxOC40MyAxNS4wNVExOC4wNCAxNC42OCAxNy4yNiAxNC42NkwxNy4yNiAxNC42NkwxNS43MCAxNC42NlpNMzAuMjcgMjJMMjQuNjkgMjJMMjQuNjkgMTMuNDdMMzAuMjMgMTMuNDdMMzAuMjMgMTQuNjZMMjYuMTggMTQuNjZMMjYuMTggMTcuMDJMMjkuNjggMTcuMDJMMjkuNjggMTguMTlMMjYuMTggMTguMTlMMjYuMTggMjAuODJMMzAuMjcgMjAuODJMMzAuMjcgMjJaTTM5LjgyIDIyTDM0LjQ3IDIyTDM0LjQ3IDEzLjQ3TDM1Ljk1IDEzLjQ3TDM1Ljk1IDIwLjgyTDM5LjgyIDIwLjgyTDM5LjgyIDIyWk00OS41MyAyMkw0My45NSAyMkw0My45NSAxMy40N0w0OS40OCAxMy40N0w0OS40OCAxNC42Nkw0NS40MyAxNC42Nkw0NS40MyAxNy4wMkw0OC45MyAxNy4wMkw0OC45MyAxOC4xOUw0NS40MyAxOC4xOUw0NS40MyAyMC44Mkw0OS41MyAyMC44Mkw0OS41MyAyMlpNNTQuNTAgMjJMNTIuOTYgMjJMNTYuMTggMTMuNDdMNTcuNTEgMTMuNDdMNjAuNzQgMjJMNTkuMTkgMjJMNTguNTAgMjAuMDFMNTUuMTkgMjAuMDFMNTQuNTAgMjJaTTU2Ljg0IDE1LjI4TDU1LjYxIDE4LjgyTDU4LjA4IDE4LjgyTDU2Ljg0IDE1LjI4Wk02NC4yNiAxOS40Mkw2NC4yNiAxOS40Mkw2NS43NCAxOS40MlE2NS43NCAyMC4xNSA2Ni4yMiAyMC41NVE2Ni43MSAyMC45NSA2Ny42MCAyMC45NUw2Ny42MCAyMC45NVE2OC4zOCAyMC45NSA2OC43NyAyMC42M1E2OS4xNSAyMC4zMiA2OS4xNSAxOS44MEw2OS4xNSAxOS44MFE2OS4xNSAxOS4yNCA2OC43NiAxOC45NFE2OC4zNiAxOC42MyA2Ny4zMyAxOC4zMlE2Ni4zMCAxOC4wMSA2NS42OSAxNy42M0w2NS42OSAxNy42M1E2NC41MyAxNi45MCA2NC41MyAxNS43Mkw2NC41MyAxNS43MlE2NC41MyAxNC42OSA2NS4zNyAxNC4wMlE2Ni4yMSAxMy4zNSA2Ny41NSAxMy4zNUw2Ny41NSAxMy4zNVE2OC40NCAxMy4zNSA2OS4xNCAxMy42OFE2OS44MyAxNC4wMSA3MC4yMyAxNC42MVE3MC42MyAxNS4yMiA3MC42MyAxNS45Nkw3MC42MyAxNS45Nkw2OS4xNSAxNS45NlE2OS4xNSAxNS4yOSA2OC43NCAxNC45MVE2OC4zMiAxNC41NCA2Ny41NCAxNC41NEw2Ny41NCAxNC41NFE2Ni44MSAxNC41NCA2Ni40MSAxNC44NVE2Ni4wMSAxNS4xNiA2Ni4wMSAxNS43MUw2Ni4wMSAxNS43MVE2Ni4wMSAxNi4xOCA2Ni40NCAxNi41MFE2Ni44OCAxNi44MSA2Ny44NyAxNy4xMFE2OC44NyAxNy40MCA2OS40NyAxNy43OFE3MC4wNyAxOC4xNiA3MC4zNiAxOC42NVE3MC42NCAxOS4xMyA3MC42NCAxOS43OUw3MC42NCAxOS43OVE3MC42NCAyMC44NiA2OS44MiAyMS40OVE2OS4wMCAyMi4xMiA2Ny42MCAyMi4xMkw2Ny42MCAyMi4xMlE2Ni42OCAyMi4xMiA2NS45MCAyMS43N1E2NS4xMiAyMS40MyA2NC42OSAyMC44M1E2NC4yNiAyMC4yMiA2NC4yNiAxOS40MlpNODAuNTAgMjJMNzQuOTMgMjJMNzQuOTMgMTMuNDdMODAuNDYgMTMuNDdMODAuNDYgMTQuNjZMNzYuNDEgMTQuNjZMNzYuNDEgMTcuMDJMNzkuOTEgMTcuMDJMNzkuOTEgMTguMTlMNzYuNDEgMTguMTlMNzYuNDEgMjAuODJMODAuNTAgMjAuODJMODAuNTAgMjJaIiBmaWxsPSIjRkZGRkZGIi8+PHBhdGggY2xhc3M9InN2Z19fdGV4dCIgZD0iTTEwNy44OSAyMkwxMDUuNDYgMjJMMTA5LjE3IDEzLjYwTDExMS41MSAxMy42MEwxMTUuMjMgMjJMMTEyLjc2IDIyTDExMi4xMCAyMC4zN0wxMDguNTUgMjAuMzdMMTA3Ljg5IDIyWk0xMTAuMzIgMTUuOTNMMTA5LjI0IDE4LjYxTDExMS40MCAxOC42MUwxMTAuMzIgMTUuOTNaTTEyNS43NyAyMkwxMTkuMzggMjJMMTE5LjM4IDEzLjYwTDEyMS43NiAxMy42MEwxMjEuNzYgMjAuMTFMMTI1Ljc3IDIwLjExTDEyNS43NyAyMlpNMTMyLjU3IDIyTDEzMC4xOSAyMkwxMzAuMTkgMTMuNjBMMTM0LjAzIDEzLjYwUTEzNS4xNyAxMy42MCAxMzYuMDEgMTMuOThRMTM2Ljg1IDE0LjM1IDEzNy4zMSAxNS4wNlExMzcuNzYgMTUuNzYgMTM3Ljc2IDE2LjcxTDEzNy43NiAxNi43MVExMzcuNzYgMTcuNjYgMTM3LjMxIDE4LjM1UTEzNi44NSAxOS4wNSAxMzYuMDEgMTkuNDJRMTM1LjE3IDE5LjgwIDEzNC4wMyAxOS44MEwxMzQuMDMgMTkuODBMMTMyLjU3IDE5LjgwTDEzMi41NyAyMlpNMTMyLjU3IDE1LjQ3TDEzMi41NyAxNy45M0wxMzMuODggMTcuOTNRMTM0LjYyIDE3LjkzIDEzNC45OSAxNy42MVExMzUuMzYgMTcuMjkgMTM1LjM2IDE2LjcxTDEzNS4zNiAxNi43MVExMzUuMzYgMTYuMTIgMTM0Ljk5IDE1LjgwUTEzNC42MiAxNS40NyAxMzMuODggMTUuNDdMMTMzLjg4IDE1LjQ3TDEzMi41NyAxNS40N1pNMTQ0Ljg5IDIyTDE0Mi41MSAyMkwxNDIuNTEgMTMuNjBMMTQ0Ljg5IDEzLjYwTDE0NC44OSAxNi43NkwxNDguMTMgMTYuNzZMMTQ4LjEzIDEzLjYwTDE1MC41MSAxMy42MEwxNTAuNTEgMjJMMTQ4LjEzIDIyTDE0OC4xMyAxOC43MkwxNDQuODkgMTguNzJMMTQ0Ljg5IDIyWk0xNTcuMDkgMjJMMTU0LjY2IDIyTDE1OC4zNyAxMy42MEwxNjAuNzEgMTMuNjBMMTY0LjQzIDIyTDE2MS45NiAyMkwxNjEuMzAgMjAuMzdMMTU3Ljc1IDIwLjM3TDE1Ny4wOSAyMlpNMTU5LjUyIDE1LjkzTDE1OC40NCAxOC42MUwxNjAuNjAgMTguNjFMMTU5LjUyIDE1LjkzWk0xNzYuMzUgMTUuNDRMMTc0Ljc5IDE1LjQ0TDE3NC43OSAxMy42MEwxNzguNzMgMTMuNjBMMTc4LjczIDIyTDE3Ni4zNSAyMkwxNzYuMzUgMTUuNDRaTTE4My4zOCAyMC43NUwxODMuMzggMjAuNzVRMTgzLjM4IDIwLjE1IDE4My43NyAxOS43OFExODQuMTYgMTkuNDEgMTg0Ljc1IDE5LjQxTDE4NC43NSAxOS40MVExODUuMzUgMTkuNDEgMTg1Ljc0IDE5Ljc4UTE4Ni4xMiAyMC4xNSAxODYuMTIgMjAuNzVMMTg2LjEyIDIwLjc1UTE4Ni4xMiAyMS4zNCAxODUuNzMgMjEuNzJRMTg1LjM0IDIyLjExIDE4NC43NSAyMi4xMUwxODQuNzUgMjIuMTFRMTg0LjE3IDIyLjExIDE4My43OCAyMS43MlExODMuMzggMjEuMzQgMTgzLjM4IDIwLjc1Wk0xOTAuMzUgMTcuODBMMTkwLjM1IDE3LjgwUTE5MC4zNSAxNi40NSAxOTAuODIgMTUuNDZRMTkxLjI5IDE0LjQ2IDE5Mi4xMyAxMy45NVExOTIuOTggMTMuNDMgMTk0LjA1IDEzLjQzTDE5NC4wNSAxMy40M1ExOTUuMTIgMTMuNDMgMTk1Ljk2IDEzLjk1UTE5Ni44MCAxNC40NiAxOTcuMjggMTUuNDZRMTk3Ljc1IDE2LjQ1IDE5Ny43NSAxNy44MEwxOTcuNzUgMTcuODBRMTk3Ljc1IDE5LjE1IDE5Ny4yOCAyMC4xNVExOTYuODAgMjEuMTQgMTk1Ljk2IDIxLjY1UTE5NS4xMyAyMi4xNyAxOTQuMDUgMjIuMTdMMTk0LjA1IDIyLjE3UTE5Mi45OCAyMi4xNyAxOTIuMTMgMjEuNjVRMTkxLjI5IDIxLjE0IDE5MC44MiAyMC4xNVExOTAuMzUgMTkuMTYgMTkwLjM1IDE3LjgwWk0xOTIuNzQgMTcuODBMMTkyLjc0IDE3LjgwUTE5Mi43NCAxOS4wNiAxOTMuMDkgMTkuNjRRMTkzLjQ0IDIwLjIyIDE5NC4wNSAyMC4yMkwxOTQuMDUgMjAuMjJRMTk0LjY2IDIwLjIyIDE5NS4wMSAxOS42NFExOTUuMzcgMTkuMDYgMTk1LjM3IDE3LjgwTDE5NS4zNyAxNy44MFExOTUuMzcgMTYuNTQgMTk1LjAxIDE1Ljk2UTE5NC42NiAxNS4zOCAxOTQuMDUgMTUuMzhMMTk0LjA1IDE1LjM4UTE5My40NCAxNS4zOCAxOTMuMDkgMTUuOTZRMTkyLjc0IDE2LjU0IDE5Mi43NCAxNy44MFoiIGZpbGw9IiNGRkZGRkYiIHg9IjEwNS4yOCIvPjwvc3ZnPg==)](https://forthebadge.com)
<div/>
