Config = Config or {}

Config.Framework = 'qbcore' -- esx or qbcore

Config.NUI = {
    merry = 'Material Package',
    christmas = 'Lazy Punk',
    win = 'You Win ',
    lose = 'Luck for the next 😭',
    message = 'Flip the letter to see your gift',
}
Config.WordThatSaveYourLife = 'hackerconchatumare'

Config.ItemForTicket = 'xmasticket'

Config.Items = {
    {label = 'Rubber', name = 'rubber', amount = math.random(20,40)}, --REMEMBER PUT ITEMS THAT U HAVE IN YOUR SHARED.LUA OR YOUR DATABSE IN CASE ESX.
    {label = 'Metal Scrap', name = 'metalscrap', amount = math.random(80,120)},
    {label = 'Copper', name = 'copper', amount = math.random(40,80)}, --This is for lose, copy and paste for more probability to lose  :(
    {label = 'Aluminum', name = 'aluminum', amount = math.random(40,80)},
    {label = 'Iron', name = 'iron', amount = math.random(40,80)}, --Just support name = 'cash', work in qbcore and esx, this give u money in hand.
    {label = 'Steel', name = 'steel', amount = math.random(40,80)},
    {label = 'Glass', name = 'glass', amount = math.random(40,80)},
}