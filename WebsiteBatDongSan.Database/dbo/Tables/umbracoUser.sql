CREATE TABLE [dbo].[umbracoUser] (
    [id]                     INT            IDENTITY (1, 1) NOT NULL,
    [userDisabled]           BIT            CONSTRAINT [DF_umbracoUser_userDisabled] DEFAULT ('0') NOT NULL,
    [userNoConsole]          BIT            CONSTRAINT [DF_umbracoUser_userNoConsole] DEFAULT ('0') NOT NULL,
    [userType]               INT            NOT NULL,
    [startStructureID]       INT            NOT NULL,
    [startMediaID]           INT            NULL,
    [userName]               NVARCHAR (255) NOT NULL,
    [userLogin]              NVARCHAR (125) NOT NULL,
    [userPassword]           NVARCHAR (500) NOT NULL,
    [userEmail]              NVARCHAR (255) NOT NULL,
    [userLanguage]           NVARCHAR (10)  NULL,
    [securityStampToken]     NVARCHAR (255) NULL,
    [failedLoginAttempts]    INT            NULL,
    [lastLockoutDate]        DATETIME       NULL,
    [lastPasswordChangeDate] DATETIME       NULL,
    [lastLoginDate]          DATETIME       NULL,
    CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_umbracoUser_umbracoUserType_id] FOREIGN KEY ([userType]) REFERENCES [dbo].[umbracoUserType] ([id])
);


GO
CREATE NONCLUSTERED INDEX [IX_umbracoUser_userLogin]
    ON [dbo].[umbracoUser]([userLogin] ASC);

