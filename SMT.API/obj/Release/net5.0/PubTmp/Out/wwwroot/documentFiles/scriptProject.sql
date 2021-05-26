USE [SMTDB]
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId],[GovernoratesId]) VALUES (1, N'Zaha Mall', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 1, 1, 1, 1,1)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId],[GovernoratesId]) VALUES (5, N'Four Season Hotel', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 3, 3, 3, 6,2)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId],[GovernoratesId]) VALUES (6, N'Alex Factory', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 3, 2, 2, 7,3)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId],[GovernoratesId]) VALUES (7, N'Light Of World', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 2, 3, 1, 7,4)
SET IDENTITY_INSERT [dbo].[Projects] OFF
