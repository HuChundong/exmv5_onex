.class public Lcom/htc/util/mail/MailMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MailMessageReceiver.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXTRA_HTC_MAIL_ACCOUNTID:Ljava/lang/String; = "accountId"

.field private static final EXTRA_HTC_MAIL_ACCOUNT_CHANGE:Ljava/lang/String; = "accountChange"

.field private static final EXTRA_HTC_MAIL_MESSAGE_CHANGE:Ljava/lang/String; = "messageChange"

.field private static final EXTRA_HTC_MAIL_MESSAGE_DELETE:Ljava/lang/String; = "messageDelete"

.field private static final EXTRA_HTC_MAIL_MESSAGE_READ:Ljava/lang/String; = "messageRead"

.field private static final EXTRA_HTC_MAIL_MESSAGE_RELOAD:Ljava/lang/String; = "messageReload"

.field private static final EXTRA_HTC_MAIL_MESSAGE_UNREAD:Ljava/lang/String; = "messageUnread"

.field private static final EXTRA_HTC_MAIL_SETTING_CHANGE:Ljava/lang/String; = "settingChange"

.field private static final EXTRA_HTC_MAIL_STAR_MARK:Ljava/lang/String; = "starMark"

.field private static final EXTRA_HTC_MAIL_STAR_UNMARK:Ljava/lang/String; = "starUnmark"

.field private static final EXTRA_HTC_MAIL_SYNC_FINISH:Ljava/lang/String; = "syncFinish"

.field private static final EXTRA_HTC_MAIL_SYNC_START:Ljava/lang/String; = "syncStart"

.field private static final TAG:Ljava/lang/String; = "MailMessageReceiver"


# instance fields
.field private mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastActiveContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailMessageReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/IHandleMailManagerMessage;)V
    .locals 2
    .parameter "m"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 54
    iput-object v1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    .line 67
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.mail.eas.accountRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.mail.NOTIFY_NEW_MAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    .line 73
    return-void
.end method


# virtual methods
.method public declared-synchronized Active(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "MailMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    :cond_1
    iput-object p1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    .line 90
    const-string v0, "MailMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Deactive()V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "MailMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, action:Ljava/lang/String;
    const-string v24, "com.htc.android.mail.intent.change"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 120
    const-string v24, "accountId"

    const-wide/16 v25, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 121
    .local v4, accountId:J
    const-string v24, "starMark"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v17

    .line 122
    .local v17, markStar:[J
    const-string v24, "starUnmark"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v23

    .line 123
    .local v23, unMarkStar:[J
    const-string v24, "messageRead"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v19

    .line 124
    .local v19, msgRead:[J
    const-string v24, "messageUnread"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v21

    .line 125
    .local v21, msgUnRead:[J
    const-string v24, "messageDelete"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v18

    .line 126
    .local v18, msgDeleted:[J
    const-string v24, "messageReload"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v20

    .line 127
    .local v20, msgReload:[J
    const-string v24, "settingChange"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 129
    .local v11, isMailSettingChange:Z
    const-string v24, "accountChange"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 130
    .local v9, isAccountChange:Z
    const-string v24, "messageChange"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 131
    .local v10, isMailMessageChange:Z
    const-string v24, "syncStart"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 132
    .local v13, isMailSyncStart:Z
    const-string v24, "syncFinish"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 134
    .local v12, isMailSyncFinished:Z
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v22, sb:Ljava/lang/StringBuffer;
    if-eqz v9, :cond_0

    .line 136
    const-string v24, "[Account Change]"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleAccountRefresh()V

    .line 139
    :cond_0
    if-eqz v10, :cond_1

    .line 140
    const-string v24, "[Mail Message Change]"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleFoldersChange()V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleMessageChange()V

    .line 146
    :cond_1
    if-eqz v13, :cond_2

    .line 147
    const-string v24, "[Mail Sync Start]"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleAccountSyncStart(J)V

    .line 150
    :cond_2
    if-eqz v12, :cond_3

    .line 151
    const-string v24, "[Mail Sync Finished]"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleAccountSyncFinish(J)V

    .line 155
    :cond_3
    const-wide/16 v24, -0x1

    cmp-long v24, v24, v4

    if-eqz v24, :cond_4

    const-string v24, "Account: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 157
    :cond_4
    if-eqz v11, :cond_7

    .line 159
    const-string v24, " Setting Change"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_5
    sget-boolean v24, Lcom/htc/util/mail/MailMessageReceiver;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 198
    const-string v24, "MailMessageReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RECEIVE2:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v4           #accountId:J
    .end local v9           #isAccountChange:Z
    .end local v10           #isMailMessageChange:Z
    .end local v11           #isMailSettingChange:Z
    .end local v12           #isMailSyncFinished:Z
    .end local v13           #isMailSyncStart:Z
    .end local v17           #markStar:[J
    .end local v18           #msgDeleted:[J
    .end local v19           #msgRead:[J
    .end local v20           #msgReload:[J
    .end local v21           #msgUnRead:[J
    .end local v22           #sb:Ljava/lang/StringBuffer;
    .end local v23           #unMarkStar:[J
    :cond_6
    :goto_0
    return-void

    .line 160
    .restart local v4       #accountId:J
    .restart local v9       #isAccountChange:Z
    .restart local v10       #isMailMessageChange:Z
    .restart local v11       #isMailSettingChange:Z
    .restart local v12       #isMailSyncFinished:Z
    .restart local v13       #isMailSyncStart:Z
    .restart local v17       #markStar:[J
    .restart local v18       #msgDeleted:[J
    .restart local v19       #msgRead:[J
    .restart local v20       #msgReload:[J
    .restart local v21       #msgUnRead:[J
    .restart local v22       #sb:Ljava/lang/StringBuffer;
    .restart local v23       #unMarkStar:[J
    :cond_7
    if-eqz v17, :cond_8

    .line 162
    const-string v24, " Message Mark Star:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    move-object/from16 v7, v17

    .local v7, arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 164
    .local v14, l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 166
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_8
    if-eqz v23, :cond_9

    .line 168
    const-string v24, " Message Unmark Star:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    move-object/from16 v7, v23

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 170
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 172
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_9
    if-eqz v19, :cond_a

    .line 174
    const-string v24, " Message Read:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    move-object/from16 v7, v19

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_3
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 176
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 178
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_a
    if-eqz v21, :cond_b

    .line 180
    const-string v24, " Message Unread:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    move-object/from16 v7, v21

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_4
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 182
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 184
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_b
    if-eqz v18, :cond_c

    .line 186
    const-string v24, " Message Deleted:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    move-object/from16 v7, v18

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_5
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 188
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 189
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_c
    if-eqz v20, :cond_5

    .line 191
    const-string v24, " Message Reload:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    move-object/from16 v7, v20

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_6
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 193
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 203
    .end local v4           #accountId:J
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v9           #isAccountChange:Z
    .end local v10           #isMailMessageChange:Z
    .end local v11           #isMailSettingChange:Z
    .end local v12           #isMailSyncFinished:Z
    .end local v13           #isMailSyncStart:Z
    .end local v14           #l:J
    .end local v16           #len$:I
    .end local v17           #markStar:[J
    .end local v18           #msgDeleted:[J
    .end local v19           #msgRead:[J
    .end local v20           #msgReload:[J
    .end local v21           #msgUnRead:[J
    .end local v22           #sb:Ljava/lang/StringBuffer;
    .end local v23           #unMarkStar:[J
    :cond_d
    sget-boolean v24, Lcom/htc/util/mail/MailMessageReceiver;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 205
    const-string v24, "MailMessageReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NPR:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
