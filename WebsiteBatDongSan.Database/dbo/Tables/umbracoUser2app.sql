CREATE TABLE [dbo].[umbracoUser2app] (
    [user] INT           NOT NULL,
    [app]  NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_user2app] PRIMARY KEY CLUSTERED ([user] ASC, [app] ASC),
    CONSTRAINT [FK_umbracoUser2app_umbracoUser_id] FOREIGN KEY ([user]) REFERENCES [dbo].[umbracoUser] ([id])
);

