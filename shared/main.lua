Config = {}
Config.UsePoints = false
Config.UseOx = true
Config.Wardrobes = {
    [1] = {
        UsePed = true, -- Do you want to use a ped?
        job = 'police',
        coords = vec3(231.0244, 382.1249, 106.4557), -- Box Zones
        PedCoords = vec3(231.0244, 382.1249, 105.4557), -- same as box just needs a lower Z axis
        h = 341.2538, 
        size = vec3(1, 1, 2),
        rotation = 75,
        isExtra = true, -- if this needs an extra outfits menu
        debug = false, -- can debug if you need to
        ped = 's_m_m_armoured_01', -- ped
        wardrobes = {
            ['0'] = { -- rank for this uniform
                title = 'Cadet',
                description = 'Cadet Uniform',
                icon = 'circle',
                extraOutfits = false,
                MaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                },
                FemaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            },
            ['1'] = { -- rank for this uniform
                title = 'Traffic Officer',
                description = 'Traffic Officer Uniform',
                icon = 'circle',
                extraOutfits = false,
                MaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                },
                FemaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            },
            ['2'] = { -- rank for this uniform
                title = 'Police Officer',
                description = 'Police Officer Uniform',
                icon = 'circle',
                extraOutfits = false,
                MaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                },
                FemaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            },
            ['3'] = {
                title = 'Sr. Officer',
                description = 'Sr. Officer Uniform 1',
                icon = 'circle',
                extraOutfits = true,
                MaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                    ['mask_1'] = -1, ['helmet_1'] = -1
                },
                FemaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            },
            ['4'] = {
                title = 'Cadet',
                description = 'Cadet Uniform 2',
                icon = 'circle',
                extraOutfits = false,
                MaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                },
                FemaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            },
        },
    },
    [2] = {
        UsePed = true, -- Do you want to use a ped?
        job = 'ambulance',
        coords = vec3(234.2700, 381.0216, 106.3469), -- Box Zones
        PedCoords = vec3(234.2700, 381.0216, 105.3469), -- same as box just needs a lower Z axis
        h = 341.0594, 
        size = vec3(1, 1, 2),
        rotation = 75,
        debug = false, -- can debug if you need to
        isExtra = false,
        ped = 'S_M_M_Doctor_01', -- ped
        wardrobes = {
            ['0'] = {
                rank = 3,
                title = 'Sr. Officer',
                description = 'Sr. Officer Uniform 1',
                icon = 'circle',
                extraOutfits = true,
                MaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                },
                FemaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            },
            ['3'] = {
                rank = 4,
                title = 'Cadet',
                description = 'Cadet Uniform 2',
                icon = 'circle',
                extraOutfits = false,
                MaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                },
                FemaleOutfit = {
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            },
        },
    },
}

Config.ExtraFits = {
    ['police'] = {
        [0] = { -- RANK based
            male = {
                [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    outfit = {
                        ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                        ['torso_1'] = 5, ['torso_2'] = 0,
                        ['arms'] = 5, ['bproof_1'] = -1,
                        ['pants_1'] = 9, ['pants_2'] = 4,
                        ['shoes_1'] = 7, ['shoes_2'] = 2,
                    }
                },
                [2] = {
                    title = 'Swat',
                    icon = 'hand',
                    description = 'Leave no criminal standing',
                    outfit = {
                        ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                        ['torso_1'] = 5, ['torso_2'] = 0,
                        ['arms'] = 5, ['bproof_1'] = -1,
                        ['pants_1'] = 9, ['pants_2'] = 4,
                        ['shoes_1'] = 7, ['shoes_2'] = 2,
                    }
                },
            },
            female = {
                [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            }
        },
    [1] = {
            male = {
                [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    outfit = {
                        ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                        ['torso_1'] = 5, ['torso_2'] = 0,
                        ['arms'] = 5, ['bproof_1'] = -1,
                        ['pants_1'] = 9, ['pants_2'] = 4,
                        ['shoes_1'] = 7, ['shoes_2'] = 2,
                    }
                },
            },
            female = {
                [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            }
    },
    [2] = { 
            male = {
                [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    outfit = {
                        ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                        ['torso_1'] = 5, ['torso_2'] = 0,
                        ['arms'] = 5, ['bproof_1'] = -1,
                        ['pants_1'] = 9, ['pants_2'] = 4,
                        ['shoes_1'] = 7, ['shoes_2'] = 2,
                    }
                },
        },
        female = {
            [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            }
    },
    [3] = {
            male = {
                [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    outfit = {
                        ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                        ['torso_1'] = 5, ['torso_2'] = 0,
                        ['arms'] = 5, ['bproof_1'] = -1,
                        ['pants_1'] = 9, ['pants_2'] = 4,
                        ['shoes_1'] = 7, ['shoes_2'] = 2,
                    }
                },
            },
            female = {
                [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,
                }
            }
    },
    [4] = {
            male = {
                [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    outfit = {
                        ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                        ['torso_1'] = 5, ['torso_2'] = 0,
                        ['arms'] = 5, ['bproof_1'] = -1,
                        ['pants_1'] = 9, ['pants_2'] = 4,
                        ['shoes_1'] = 7, ['shoes_2'] = 2,
                    }
                },
            },
            female = {
                [1] = {
                    title = 'Undercover Agent',
                    icon = 'hand',
                    description = 'Ready to infiltrate? Lets gear up!',
                    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                    ['torso_1'] = 5, ['torso_2'] = 0,
                    ['arms'] = 5, ['bproof_1'] = -1,
                    ['pants_1'] = 9, ['pants_2'] = 4,
                    ['shoes_1'] = 7, ['shoes_2'] = 2,s
                }
            }
        },
    },
}