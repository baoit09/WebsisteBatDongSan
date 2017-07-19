CREATE TABLE [dbo].[umbracoUser2NodePermission] (
    [userId]     INT            NOT NULL,
    [nodeId]     INT            NOT NULL,
    [permission] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_umbracoUser2NodePermission] PRIMARY KEY CLUSTERED ([userId] ASC, [nodeId] ASC, [permission] ASC),
    CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id]),
    CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id] FOREIGN KEY ([userId]) REFERENCES [dbo].[umbracoUser] ([id])
);

