CREATE TABLE [dbo].[umbracoDeployDependency] (
    [sourceId] INT NOT NULL,
    [targetId] INT NOT NULL,
    [mode]     INT NOT NULL,
    CONSTRAINT [PK_umbracoDeployDependency] PRIMARY KEY CLUSTERED ([sourceId] ASC, [targetId] ASC),
    CONSTRAINT [FK_umbracoDeployDependency_umbracoDeployChecksum_id1] FOREIGN KEY ([sourceId]) REFERENCES [dbo].[umbracoDeployChecksum] ([id]),
    CONSTRAINT [FK_umbracoDeployDependency_umbracoDeployChecksum_id2] FOREIGN KEY ([targetId]) REFERENCES [dbo].[umbracoDeployChecksum] ([id])
);

