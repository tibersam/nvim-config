# Tibersam Neovim Config #

Hi there,

This is my Neovim configuration. You can use it, if you want to, but i will provide no support.

Regards

## Updating Pip packages ##

You can update with the following command
```
pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U
```

The idear is taken from [here][1]


## Markdown Notes ##
Markdown ideas are taken from [here][2]


[1]:https://www.activestate.com/resources/quick-reads/how-to-update-all-python-packages/#can-i-pip-update-all-python-packages "https://www.activestate.com/resources/quick-reads/how-to-update-all-python-packages/#can-i-pip-update-all-python-packages"
[2]:https://jdhao.github.io/2019/01/15/markdown_edit_preview_nvim/ "https://jdhao.github.io/2019/01/15/markdown_edit_preview_nvim/"

