
Config = {}

Config.Core = "QBCore"
Config.OldQBCore = false
Config.CoreFolderName = "qb-core" 

Config.Books = {
    ['tourism_guide'] = {
        ['pages'] = {
            { pageName = "cover", type = 'hard', source = 'local' }, --Front Cover
            { pageName = "backcover", type = 'hard', source = 'local' }, --Rear Cover
        },
        ['prop'] = 'tablet', --ex. book, map
        ['size'] = {
            ['width'] = 800, --page image width
            ['height'] = 500, --page image height
        },
    },
    ['pacific_blueprints'] = {
        ['pages'] = {
            { pageName = "cover", type = 'hard', source = 'local' }, --Front Cover
            { pageName = "1", type = 'hard', source = 'local' }, --Inside Front Cover
            { pageName = "2", type = 'normal', source = 'local' }, --Page 2
            { pageName = "3", type = 'normal', source = 'local' }, --Page 2
            { pageName = "4", type = 'hard', source = 'local' }, --Inside Rear Cover
            { pageName = "backcover", type = 'hard', source = 'local' }, --Rear Cover
        },
        ['prop'] = 'book', --ex. book, map
        ['size'] = {
            ['width'] = 800, --page image width
            ['height'] = 600, --page image height
        },
    },
	['kiwirp_guide'] = {
        ['pages'] = {
            { pageName = "cover", type = 'hard', source = 'local' }, --Front Cover
            { pageName = "1", type = 'hard', source = 'local' }, --Inside Front Cover
            { pageName = "2", type = 'normal', source = 'local' }, --Page 2
            { pageName = "3", type = 'normal', source = 'local' }, --Page 2
            { pageName = "4", type = 'normal', source = 'local' }, --Page 2
            { pageName = "5", type = 'normal', source = 'local' }, --Page 2
            { pageName = "6", type = 'normal', source = 'local' }, --Page 3
            { pageName = "7", type = 'normal', source = 'local' }, --Page 3
            { pageName = "8", type = 'hard', source = 'local' }, --Inside Rear Cover
            { pageName = "backcover", type = 'hard', source = 'local' }, --Rear Cover
        },
        ['prop'] = 'book', --ex. book, map
        ['size'] = {
            ['width'] = 800, --page image width
            ['height'] = 600, --page image height
        },
    },
	['krp_mirror_restaurant'] = {
        ['pages'] = {
            { pageName = "cover", type = 'hard', source = 'local' }, --Front Cover
            { pageName = "1", type = 'hard', source = 'local' }, --Inside Front Cover
            { pageName = "2", type = 'normal', source = 'local' }, --Page 2
            { pageName = "3", type = 'normal', source = 'local' }, --Page 2
            { pageName = "4", type = 'hard', source = 'local' }, --Page 2
            { pageName = "backcover", type = 'hard', source = 'local' }, --Rear Cover
        },
        ['prop'] = 'book', --ex. book, map
        ['size'] = {
            ['width'] = 800, --page image width
            ['height'] = 600, --page image height
        },
    },
	['valhalla'] = {
        ['pages'] = {
            { pageName = "cover", type = 'hard', source = 'local' }, --Front Cover
            { pageName = "1", type = 'hard', source = 'local' }, --Inside Front Cover
            { pageName = "2", type = 'normal', source = 'local' }, --Page 2
            { pageName = "3", type = 'normal', source = 'local' }, --Page 2
            { pageName = "4", type = 'hard', source = 'local' }, --Page 2
            { pageName = "backcover", type = 'hard', source = 'local' }, --Rear Cover
        },
        ['prop'] = 'book', --ex. book, map
        ['size'] = {
            ['width'] = 800, --page image width
            ['height'] = 600, --page image height
        },
    },
}