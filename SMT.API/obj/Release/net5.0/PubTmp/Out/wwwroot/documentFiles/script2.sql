USE [pharmacyDB]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0fe13e1f-139f-44ef-93b7-acaea21e023c', N'DataEntry', N'DATAENTRY', N'b9d4f978-0c2e-487f-844e-86e970ba16bf')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'39f154cc-9687-4157-800c-a291171c5956', N'Clerk', N'CLERK', N'fdd48e8b-7573-43ba-a0ea-c5bbc49ff80b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'838cbdf3-2a4b-4d6b-a588-db2a6a3e57d1', N'SuperAdmin', N'SUPERADMIN', N'5e442c37-d883-45d5-83da-253aa8b58bed')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a', N'Admin', N'ADMIN', N'0fdc0b92-a909-4628-a6c3-e9cf8c64a847')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ae229286-4368-41c6-9377-7606e87ad378', N'User', N'USER', N'c4fe17ae-8dd6-475b-8274-bd6c45d1e524')
SET IDENTITY_INSERT [dbo].[Pharmacy] ON 

INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location]) VALUES (1, N'Elnagah', N'nnn', N'12332', N'mail@.com', 1, N'kjhg')
INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location]) VALUES (2, N'Tawfek', N'taw@t.com', N'125555', N'mm@m.com', 1, N'loc')
INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location]) VALUES (3, N'Elezaby', N'elz@z.com', N'255555', N'ez@z.com', 1, N'loc')
INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location]) VALUES (5, N'19011', N's@s.com', N'145555', N'yt@x.com', 1, N'uyh')
INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location]) VALUES (6, N'Ro4eta', N'f@d.com', N'145555', N'yt@x.com', 1, N'uyh')
SET IDENTITY_INSERT [dbo].[Pharmacy] OFF
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'125a78d3-fa54-49e7-a484-4e6dd7200384', N'shahynaz1', N'SHAHYNAZ1', N'shahynaz1@a.com', N'SHAHYNAZ1@A.COM', 0, N'AQAAAAEAACcQAAAAEOPGieeBYgIOfVho0ioTruvRVbO81SQbdm9Mgas5ictStffsT5BIytxz1g0sAGuE8w==', N'CV34TCBBFEQHZQM6CALI3B7P6S45VQVN', N'5da8e614-1bf0-4327-93c1-674ebfdf4273', NULL, 0, 0, NULL, 1, 0, 5)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'3f4033da-f9ac-4126-8964-6465f1412a17', N'shahynazPharmacySuperAdmin12', N'SHAHYNAZPHARMACYSUPERADMIN12', N'shahynazPharmacySuperAdmin21@a.com', N'SHAHYNAZPHARMACYSUPERADMIN21@A.COM', 0, N'AQAAAAEAACcQAAAAEOgWAZl6U8vxvhF6L4mrExk5MwCtzU8w2D1w3Iq3aZQNuxCRZc8E3SYRLGSiYrmD7g==', N'JH2JJ3Q7PCAX35XUQQCPVNBMS5F2TOE2', N'1e81b8cc-f79b-4482-996e-247f63f7682c', NULL, 0, 0, NULL, 1, 0, 6)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'67a32466-88ef-4857-bc5e-b70db0635b8f', N'shahynazPharmacy7', N'SHAHYNAZPHARMACY7', N'shahynazPharmacy7@ahmed.com', N'SHAHYNAZPHARMACY7@AHMED.COM', 0, N'AQAAAAEAACcQAAAAEC/w8eqCY+ecgVfTZAuK89liuM14Wile0pAZaLtaZ6Y32oKO7JNf6+LQfWf+z2wc2g==', N'ZFQY6WRLGZJPTKIFEOOTH3SN4KP47XGX', N'a40f57d3-10c4-432c-aff1-5a1212fd219f', NULL, 0, 0, NULL, 1, 0, 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'72e5c2fe-00d9-4dc5-95d3-ee6325665893', N'shahynazPharmacy2', N'SHAHYNAZPHARMACY2', N'shahynazPharmacy2@ahmed.com', N'SHAHYNAZPHARMACY2@AHMED.COM', 0, N'AQAAAAEAACcQAAAAEE9FTXbMpWTuEw/Zq2B5qDGT+cN8pihXfi5XpG+OF8EPPAUGJCJV7HA7iUGuC7lHig==', N'S2V7LPTZAQTQCGLSN7F5U7RW7LIHUWE7', N'5c77c1fa-2028-459e-8e9a-b9aad8ac1e2c', NULL, 0, 0, NULL, 1, 0, 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'890355ed-a0c7-4535-9cf6-480a634e1ade', N'shahynazPharmacySuperAdmin', N'SHAHYNAZPHARMACYSUPERADMIN', N'shahynazPharmacySuperAdmin@a.com', N'SHAHYNAZPHARMACYSUPERADMIN@A.COM', 0, N'AQAAAAEAACcQAAAAEDTnG7e+veUKG5rVPElTvQOkowk2JwwSGOo7re1YCz4UUHiTKklVCBDWQHGBgHzw2g==', N'NCZZJJWRYYD65IOIIDHQKTPPTA4PP6F2', N'f7f55552-2fb7-41db-abda-88ee60ccf291', NULL, 0, 0, NULL, 1, 0, 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'944b6cf3-f2d3-4163-b2af-ebb711a8553b', N'ekram', N'EKRAM', N'jh.com', N'JH.COM', 0, N'AQAAAAEAACcQAAAAEAJgc8J/FtjDVUwCDpD2ru57wHAU9EUFRtKKC3c/xwdNUe6CC3HS6gOLR54EivRlIQ==', N'PKHB2ASCVJQKBN73QGPVVNAWXBFPS6X2', N'cac82add-9de6-453a-afb1-fe4eb94beda4', NULL, 0, 0, NULL, 1, 0, 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'9848af3c-ea64-45ec-a994-0bc482c500ba', N'shahynazPharmacy13', N'SHAHYNAZPHARMACY13', N'shahynazPharmacy13@a.com', N'SHAHYNAZPHARMACY13@A.COM', 0, N'AQAAAAEAACcQAAAAEMoMe08OZa5EMFUbai3KBMLdehWtoW6tvgfCeUOqyf9dIN/Lv27dvJT/1k+Lh5SmXw==', N'6BWWDWWLLOBOMRI6KON4G3THLVOSLJCA', N'55851198-20e7-4bef-a899-7c695b4f25a8', NULL, 0, 0, NULL, 1, 0, 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'9d0f349c-ac74-4a41-8928-711a6cf9a38e', N'tasnem', N'TASNEM', N'tas', N'TAS', 0, N'AQAAAAEAACcQAAAAEDqu26CB/bbVOwm7SRpzG5L9TUkKYJ/z3lOrgQ4UthkdRIMAcenBdN8ca6z6FDn27g==', N'NXENWVD53NDIN3UBOKV7C5QYG2XUI6IJ', N'822180ef-9c43-4f19-abb1-3b829ae34b4e', NULL, 0, 0, NULL, 1, 0, 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'a48da6ec-6bca-459b-8f16-e9abc44e452c', N'shahynaz12', N'SHAHYNAZ12', N'ahmed@ahmed.com', N'AHMED@AHMED.COM', 0, N'AQAAAAEAACcQAAAAEDeLyKGhuhWqB7C+SPPtday/ETwfsr4AF0L0FczudMDCeLs7FrGZvqV52qGdKsBeJg==', N'NF5JZTD66FE55K3GRUSBCUMPV5S2MKG4', N'a03923b3-7a65-404d-ad74-cc4b87318e34', NULL, 0, 0, NULL, 1, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'acf1ca9f-6b61-408d-a04c-73c033403b18', N'shahynazPharmacy3', N'SHAHYNAZPHARMACY3', N'shahynazPharmacy3@ahmed.com', N'SHAHYNAZPHARMACY3@AHMED.COM', 0, N'AQAAAAEAACcQAAAAELJpd00OL8tPGwutYSzODsqXIw9hUncA3pSpGou12las2VO75USaXf/SIKt8p+JOIw==', N'INGGGBMVHG33NK6RHTX7ISBXUOAXHHSP', N'55c0c6d5-125b-41f3-841f-7f50d62891a6', NULL, 0, 0, NULL, 1, 0, 5)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'e30b67bb-4687-440f-9ce7-78ed98c0fdf1', N'shahynazPharmacy6', N'SHAHYNAZPHARMACY6', N'shahynazPharmacy6@ahmed.com', N'SHAHYNAZPHARMACY6@AHMED.COM', 0, N'AQAAAAEAACcQAAAAEE3KFriBZCR/RL35o9vDyv69Tc0YPY5uO7PGdvuqG2vRHWXa9Pih0AoXoyO7xGvORg==', N'TT3UPOUTIODK4HR5AZ6Y6EI4YRYWRN37', N'2c012c1c-39ce-49e7-9520-6de3415964cc', NULL, 0, 0, NULL, 1, 0, 5)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'944b6cf3-f2d3-4163-b2af-ebb711a8553b', N'0fe13e1f-139f-44ef-93b7-acaea21e023c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9d0f349c-ac74-4a41-8928-711a6cf9a38e', N'0fe13e1f-139f-44ef-93b7-acaea21e023c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e30b67bb-4687-440f-9ce7-78ed98c0fdf1', N'0fe13e1f-139f-44ef-93b7-acaea21e023c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f4033da-f9ac-4126-8964-6465f1412a17', N'838cbdf3-2a4b-4d6b-a588-db2a6a3e57d1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'890355ed-a0c7-4535-9cf6-480a634e1ade', N'838cbdf3-2a4b-4d6b-a588-db2a6a3e57d1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'125a78d3-fa54-49e7-a484-4e6dd7200384', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'67a32466-88ef-4857-bc5e-b70db0635b8f', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'72e5c2fe-00d9-4dc5-95d3-ee6325665893', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9848af3c-ea64-45ec-a994-0bc482c500ba', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a48da6ec-6bca-459b-8f16-e9abc44e452c', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acf1ca9f-6b61-408d-a04c-73c033403b18', N'ae229286-4368-41c6-9377-7606e87ad378')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [NameAR], [Description], [DescriptionAR], [IsActive]) VALUES (1, N'cat1', N'categg', N'ytre', N'yui', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[TheraGroup] ON 

INSERT [dbo].[TheraGroup] ([ID], [Name], [Code], [IsActive]) VALUES (1, N'thera', N'ss', 1)
INSERT [dbo].[TheraGroup] ([ID], [Name], [Code], [IsActive]) VALUES (2, N'thera2', N'bb', 0)
SET IDENTITY_INSERT [dbo].[TheraGroup] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([ID], [Name], [Code], [IsActive]) VALUES (1, N'egypt', N'jhg', 1)
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Firm] ON 

INSERT [dbo].[Firm] ([ID], [Name], [IsActive], [Code]) VALUES (1, N'firm1', 1, N'ytr')
SET IDENTITY_INSERT [dbo].[Firm] OFF
SET IDENTITY_INSERT [dbo].[Form] ON 

INSERT [dbo].[Form] ([ID], [Name], [PHFORM], [IsActive], [Code]) VALUES (1, N'form1', N'ppp', 1, N'yy')
SET IDENTITY_INSERT [dbo].[Form] OFF
SET IDENTITY_INSERT [dbo].[ROAD] ON 

INSERT [dbo].[ROAD] ([ID], [Name], [Code], [Description], [IsActive]) VALUES (1, N'roooad1', N'rtyyy', N'ytttt', 1)
SET IDENTITY_INSERT [dbo].[ROAD] OFF
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([ID], [Name], [Description], [Code], [IsActive]) VALUES (1, N'un1', N'ytre', N'jhgf', 1)
SET IDENTITY_INSERT [dbo].[Unit] OFF
SET IDENTITY_INSERT [dbo].[TheraSubGroup] ON 

INSERT [dbo].[TheraSubGroup] ([ID], [Name], [Code], [IsActive], [TheraGroupID]) VALUES (1, N'theraSup1', N'hh', 1, 1)
INSERT [dbo].[TheraSubGroup] ([ID], [Name], [Code], [IsActive], [TheraGroupID]) VALUES (2, N'theraSup2', N'tt', 1, 2)
SET IDENTITY_INSERT [dbo].[TheraSubGroup] OFF
SET IDENTITY_INSERT [dbo].[Drug] ON 

INSERT [dbo].[Drug] ([ID], [TradeName], [GenericName], [Img], [TheraSubGroupID], [formID], [firmID], [unitID], [rOADID], [countryID], [TheraGroupID]) VALUES (16, N'Flagel', N'Flagel Syrup', N'GZGZR7ZTFX0YQJV0UKDWMT68MW2NEOVHZBZJU0NG.jfif', 1, 1, 1, 1, 1, 1, NULL)
INSERT [dbo].[Drug] ([ID], [TradeName], [GenericName], [Img], [TheraSubGroupID], [formID], [firmID], [unitID], [rOADID], [countryID], [TheraGroupID]) VALUES (17, N'Panadol', N'pandCaps', N'E0H7MXB9RK5UN3CATSRZL14BQDA3M1A869HKYRPJ.jfif', 1, 1, 1, 1, 1, 1, NULL)
INSERT [dbo].[Drug] ([ID], [TradeName], [GenericName], [Img], [TheraSubGroupID], [formID], [firmID], [unitID], [rOADID], [countryID], [TheraGroupID]) VALUES (19, N'Aspirin', N'Asp', N'TRUCLTIHMJKD9IL7TCVH9LCX2J9WWJOC0PPRA1UU.webp', 1, 1, 1, 1, 1, 1, NULL)
INSERT [dbo].[Drug] ([ID], [TradeName], [GenericName], [Img], [TheraSubGroupID], [formID], [firmID], [unitID], [rOADID], [countryID], [TheraGroupID]) VALUES (20, N'Congestal', N'con', N'13VIIAHIO97NH19K0CJ5SIC5QNHIVFOYBTJ97YYB.jfif', 1, 1, 1, 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Drug] OFF
SET IDENTITY_INSERT [dbo].[DrugDetails] ON 

INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (73, N'44', N'', N'55', N'ww', N'44', N'', N'2587', 1, 60, CAST(N'2020-11-05T11:00:38.0160000' AS DateTime2), CAST(N'2020-11-05T11:00:38.0160000' AS DateTime2), 1, N'', 16, 2)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (74, N'22', N'', N'22', N'q', N'22', N'', N'wds', 1, 150, CAST(N'2020-11-05T11:03:40.4200000' AS DateTime2), CAST(N'2020-11-05T11:03:40.4200000' AS DateTime2), 1, N'', 17, 2)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (76, N'2', N'', N'25', N'w', N'22', N'', N'tr12', 1, 10, CAST(N'2020-11-05T11:23:11.5370000' AS DateTime2), CAST(N'2020-11-05T11:23:11.5370000' AS DateTime2), 1, N'', 19, 2)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (79, N'33', N'', N'23', N'WW', N'33', N'', N'WE2', 1, 35, CAST(N'2020-11-15T15:20:24.8050000' AS DateTime2), CAST(N'2020-11-15T15:20:24.8050000' AS DateTime2), 1, N'', 20, 3)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (97, N'200', N'', N'20', N'220', N'200', N'', N'2020', 1, 50, CAST(N'2020-11-25T17:12:51.3210000' AS DateTime2), CAST(N'2020-11-25T17:12:51.3210000' AS DateTime2), 1, N'', 16, 6)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (98, N'5', N'', N'55', N'5', N'5', N'', N'55', 1, 40, CAST(N'2020-11-25T17:32:37.2750000' AS DateTime2), CAST(N'2020-11-25T17:32:37.2750000' AS DateTime2), 1, N'', 17, 6)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (99, N'33', N'', N'23', N'WW', N'33', N'', N'WE2', 1, 35, CAST(N'2020-11-15T15:20:24.8050000' AS DateTime2), CAST(N'2020-11-15T15:20:24.8050000' AS DateTime2), 1, N'', 20, 3)
SET IDENTITY_INSERT [dbo].[DrugDetails] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Name], [Telephone], [Address], [Email], [pharmacyName], [pharmacyID]) VALUES (1010, N'SHAHY', N'012222222', N'hhgggg', N'mail.com', NULL, 1)
INSERT [dbo].[Employee] ([ID], [Name], [Telephone], [Address], [Email], [pharmacyName], [pharmacyID]) VALUES (1011, N'ekram', N'125555555', N'iuyyyy', N'jh.com', NULL, 2)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Pledge] ON 

INSERT [dbo].[Pledge] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location]) VALUES (1, N'p1', N'pp', N'01222222', N'mailll', 1, N'lkio')
SET IDENTITY_INSERT [dbo].[Pledge] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([ID], [Name], [ContactPerson], [City], [Address], [Telephone], [Email], [Rate]) VALUES (1, N'sup1', N'2220200', N'cairo', N'ytr', N'01111111', N'mail@m.com', 10)
INSERT [dbo].[Supplier] ([ID], [Name], [ContactPerson], [City], [Address], [Telephone], [Email], [Rate]) VALUES (2, N'Segma', N'4566666', N'alex', N'sd', N'05555555', N'mm', 10)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID]) VALUES (1050, CAST(N'2020-11-25T16:36:34.2780000' AS DateTime2), 0, N'', N'w', 1, NULL, 2, 2, 6, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID]) VALUES (1051, CAST(N'2020-11-25T16:56:36.4790000' AS DateTime2), 0, N'', N'', 1, NULL, 6, 6, 2, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID]) VALUES (1052, CAST(N'2020-11-25T17:34:18.1430000' AS DateTime2), 0, N'', N'', 0, NULL, 6, 6, 2, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID]) VALUES (1053, CAST(N'2020-11-25T17:40:37.2200000' AS DateTime2), 0, N'', N'', 1, NULL, 6, 6, 2, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID]) VALUES (1054, CAST(N'2020-11-26T10:31:58.7870000' AS DateTime2), 0, N'', N'', 1, NULL, 6, 6, 2, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID]) VALUES (1055, CAST(N'2020-11-26T10:43:23.3790000' AS DateTime2), 0, N'', N'', 0, NULL, 6, 6, 2, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID]) VALUES (1056, CAST(N'2020-11-26T11:27:30.1290000' AS DateTime2), 0, N'', N'', 1, NULL, 2, 2, 5, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID]) VALUES (1057, CAST(N'2020-11-26T11:32:13.0820000' AS DateTime2), 0, N'', N'', 1, 2, 2, 2, 0, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID]) VALUES (1058, CAST(N'2020-11-26T13:52:31.8100000' AS DateTime2), 0, N'', N'', 1, NULL, 2, 2, 6, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1060, 16, 1050, CAST(2.00 AS Decimal(18, 2)), CAST(N'2020-11-25T16:36:34.2780000' AS DateTime2), CAST(N'2020-11-25T16:36:34.2780000' AS DateTime2), 12)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1061, 20, 1050, CAST(34.00 AS Decimal(18, 2)), CAST(N'2020-11-25T16:36:44.1860000' AS DateTime2), CAST(N'2020-11-25T16:36:44.1860000' AS DateTime2), 50)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1062, 20, 1051, CAST(43.00 AS Decimal(18, 2)), CAST(N'2020-11-25T16:56:36.4790000' AS DateTime2), CAST(N'2020-11-25T16:56:36.4790000' AS DateTime2), 20)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1063, 19, 1051, CAST(32.00 AS Decimal(18, 2)), CAST(N'2020-11-25T16:56:45.3480000' AS DateTime2), CAST(N'2020-11-25T16:56:45.3480000' AS DateTime2), 30)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1064, 16, 1052, CAST(50.00 AS Decimal(18, 2)), CAST(N'2020-11-25T17:34:18.1430000' AS DateTime2), CAST(N'2020-11-25T17:34:18.1430000' AS DateTime2), 50)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1065, 16, 1053, CAST(20.00 AS Decimal(18, 2)), CAST(N'2020-11-25T17:40:37.2200000' AS DateTime2), CAST(N'2020-11-25T17:40:37.2200000' AS DateTime2), 20)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1066, 17, 1053, CAST(20.00 AS Decimal(18, 2)), CAST(N'2020-11-25T17:40:46.9080000' AS DateTime2), CAST(N'2020-11-25T17:40:46.9080000' AS DateTime2), 20)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1067, 17, 1054, CAST(33.00 AS Decimal(18, 2)), CAST(N'2020-11-26T10:31:58.7870000' AS DateTime2), CAST(N'2020-11-26T10:31:58.7870000' AS DateTime2), 20)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1068, 20, 1054, CAST(23.00 AS Decimal(18, 2)), CAST(N'2020-11-26T10:32:08.7400000' AS DateTime2), CAST(N'2020-11-26T10:32:08.7400000' AS DateTime2), 10)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1069, 16, 1055, CAST(12.00 AS Decimal(18, 2)), CAST(N'2020-11-26T10:43:23.3790000' AS DateTime2), CAST(N'2020-11-26T10:43:23.3790000' AS DateTime2), 10)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1070, 17, 1055, CAST(70.00 AS Decimal(18, 2)), CAST(N'2020-11-26T10:43:48.7490000' AS DateTime2), CAST(N'2020-11-26T10:43:48.7490000' AS DateTime2), 30)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1071, 19, 1056, CAST(10.00 AS Decimal(18, 2)), CAST(N'2020-11-26T11:27:37.6850000' AS DateTime2), CAST(N'2020-11-26T11:27:37.6850000' AS DateTime2), 10)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1072, 20, 1057, CAST(12.00 AS Decimal(18, 2)), CAST(N'2020-11-26T11:32:13.0820000' AS DateTime2), CAST(N'2020-11-26T11:32:13.0820000' AS DateTime2), 20)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1073, 16, 1058, CAST(23.00 AS Decimal(18, 2)), CAST(N'2020-11-26T13:52:31.8100000' AS DateTime2), CAST(N'2020-11-26T13:52:31.8100000' AS DateTime2), 10)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201019134306_t', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027125231_re', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027153408_rey', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027154428_reyr', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201102144310_nr', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201102151650_bvcx', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201105161711_ii', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201105161751_iid', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108110246_mn', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108110411_bvc', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108135934_as', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108142747_asdsa', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108142848_hgfd', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108153441_hgfdkkkkkkkkkkk', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108154413_nbhqaaqqqqq', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108154726_nbhqaaqqqqqaaaaaaaa', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108164154_nbhqaaqqqqqaaaaaaaass', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108170116_bvttt', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109115426_asdfghj', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109115541_asdfghjewi', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109115844_asdfghjewire', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109133659_nbv', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109134303_nbvww', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111122622_mnn', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111125853_bvc', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201112113145_mhgerd', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201112113733_mhgerdqqq', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201115103342_ewq', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201125173052_db', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201126162703_bxcz', N'3.1.9')
