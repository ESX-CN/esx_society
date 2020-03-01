# esx_society
ESX的社会化管理。增加员工管理（雇用，解雇，升级/降级，更改工资），社会银行账户和洗钱。在使用社团的所有资源之前启动此脚本至关重要，否则很多事情都会出错。（纯机翻，我到现在还没完全理解这个插件到底该怎么翻译才算合适）

## 要求
- [cron](https://github.com/ESX-Org/cron)
- [esx_addonaccount](https://github.com/ESX-CN/esx_addonaccount)

## 下载 & 安装

### 使用Git
```
cd resources
git clone https://github.com/ESX-CN/esx_society [esx]/esx_society
```

### 手动
- 下载 https://github.com/ESX-CN/esx_society/archive/master.zip
- 解压至 `[esx]` 目录

## 安装
- 将 `esx_society.sql` 导入你的数据库
- 添加如下至你的 `server.cfg` 文件:

```
start esx_society
```

## 说明
ESX Society使用名为 `society_xxx` 的账户, 例如 `society_taxi` 或 `society_realestateagent`. 如果你的职位是 `boss` 社会资金将显示在您的hud中。

## 使用案例
```lua
local society = 'taxi'
local amount  = 100

TriggerServerEvent('esx_society:withdrawMoney', society, amount)
TriggerServerEvent('esx_society:depositMoney', society, amount)
TriggerServerEvent('esx_society:washMoney', society, amount)


TriggerEvent('esx_society:openBossMenu', society, function (data, menu)
	menu.close()
end, {wash = false}) -- set custom options, e.g disable washing
```

# Legal
### License
esx_society - societies for ESX

Copyright (C) 2015-2020 Jérémie N'gadi

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.