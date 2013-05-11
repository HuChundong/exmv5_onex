.class public Lcom/htc/util/settings/NotificationFlashLightUtility;
.super Ljava/lang/Object;
.source "NotificationFlashLightUtility.java"


# static fields
.field private static mAlarmColor:I

.field private static mEmailColor:I

.field private static mIncomingCallColor:I

.field private static mMissCallColor:I

.field private static mReminderColor:I

.field private static mSmsColor:I

.field private static mVoiceMailColor:I

.field private static mbAlarm:Z

.field private static mbEmail:Z

.field private static mbIncomingCall:Z

.field private static mbMissCall:Z

.field private static mbReminder:Z

.field private static mbSms:Z

.field private static mbVoiceMail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0xc800

    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    .line 43
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    .line 44
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    .line 45
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    .line 46
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    .line 47
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    .line 48
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    .line 52
    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mIncomingCallColor:I

    .line 53
    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mMissCallColor:I

    .line 54
    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mSmsColor:I

    .line 55
    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mEmailColor:I

    .line 56
    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mVoiceMailColor:I

    .line 57
    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mReminderColor:I

    .line 58
    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mAlarmColor:I

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlarm(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 124
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    const-string v0, "NotificationFlashLightUtility getAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbAlarm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    return v0

    .line 127
    :cond_0
    const-string v0, "NotificationFlashLightUtility getAlarm"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAlarmColor(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 195
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    const-string v0, "NotificationFlashLightUtility getAlarmColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mAlarmColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mAlarmColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    sget v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mAlarmColor:I

    return v0

    .line 198
    :cond_0
    const-string v0, "NotificationFlashLightUtility getAlarmColor"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAllData(Landroid/content/Context;)[Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 279
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 280
    const-string v1, "NotificationFlashLightUtility getAllData"

    const-string v2, "load success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    const/4 v1, 0x7

    new-array v0, v1, [Z

    const/4 v1, 0x0

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    aput-boolean v2, v0, v1

    sget-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x2

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    aput-boolean v2, v0, v1

    .line 286
    .local v0, result:[Z
    return-object v0

    .line 282
    .end local v0           #result:[Z
    :cond_0
    const-string v1, "NotificationFlashLightUtility getAllData"

    const-string v2, "load fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAllDataColor(Landroid/content/Context;)[I
    .locals 3
    .parameter "context"

    .prologue
    .line 373
    const/4 v1, 0x7

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mIncomingCallColor:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mMissCallColor:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mSmsColor:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mEmailColor:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mVoiceMailColor:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mReminderColor:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mAlarmColor:I

    aput v2, v0, v1

    .line 375
    .local v0, result:[I
    return-object v0
.end method

.method public static getEmail(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "NotificationFlashLightUtility getEmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbEmail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    return v0

    .line 97
    :cond_0
    const-string v0, "NotificationFlashLightUtility getEmail"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmailColor(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    const-string v0, "NotificationFlashLightUtility getEmailColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mEmailColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mEmailColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    sget v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mEmailColor:I

    return v0

    .line 168
    :cond_0
    const-string v0, "NotificationFlashLightUtility getEmailColor"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIncomingCall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    const-string v0, "NotificationFlashLightUtility getIncomingCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbIncomingCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    return v0

    .line 67
    :cond_0
    const-string v0, "NotificationFlashLightUtility getIncomingCall"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIncomingCallColor(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 135
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    const-string v0, "NotificationFlashLightUtility getIncomingCallColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mIncomingCallColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mIncomingCallColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    sget v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mIncomingCallColor:I

    return v0

    .line 138
    :cond_0
    const-string v0, "NotificationFlashLightUtility getIncomingCallColor"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMissCall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    const-string v0, "NotificationFlashLightUtility getMissCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbMissCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    return v0

    .line 77
    :cond_0
    const-string v0, "NotificationFlashLightUtility getMissCall"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMissCallColor(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 145
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    const-string v0, "NotificationFlashLightUtility getMissCallColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mMissCallColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mMissCallColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    sget v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mMissCallColor:I

    return v0

    .line 148
    :cond_0
    const-string v0, "NotificationFlashLightUtility getMissCallColor"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getReminder(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 114
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    const-string v0, "NotificationFlashLightUtility getReminder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbReminder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    return v0

    .line 117
    :cond_0
    const-string v0, "NotificationFlashLightUtility getReminder"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getReminderColor(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 185
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    const-string v0, "NotificationFlashLightUtility getReminderColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mReminderColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mReminderColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    sget v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mReminderColor:I

    return v0

    .line 188
    :cond_0
    const-string v0, "NotificationFlashLightUtility getReminderColor"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSms(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    const-string v0, "NotificationFlashLightUtility getSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbSms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    return v0

    .line 87
    :cond_0
    const-string v0, "NotificationFlashLightUtility getSms"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSmsColor(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    const-string v0, "NotificationFlashLightUtility getSmsColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mSmsColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mSmsColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    sget v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mSmsColor:I

    return v0

    .line 158
    :cond_0
    const-string v0, "NotificationFlashLightUtility getSmsColor"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVoiceMail(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    const-string v0, "NotificationFlashLightUtility getVoiceMail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbVoiceMail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    return v0

    .line 107
    :cond_0
    const-string v0, "NotificationFlashLightUtility getVoiceMail"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVoiceMailColor(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    const-string v0, "NotificationFlashLightUtility getVoiceMailColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mVoiceMailColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mVoiceMailColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    sget v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mVoiceMailColor:I

    return v0

    .line 178
    :cond_0
    const-string v0, "NotificationFlashLightUtility getVoiceMailColor"

    const-string v1, "load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadSetting(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 388
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "nfl"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 393
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 394
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_1

    move v1, v7

    :goto_0
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    .line 396
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_2

    move v1, v7

    :goto_1
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    .line 397
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_3

    move v1, v7

    :goto_2
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    .line 398
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_4

    move v1, v7

    :goto_3
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    .line 399
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_5

    move v1, v7

    :goto_4
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    .line 400
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_6

    move v1, v7

    :goto_5
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    .line 401
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_0

    move v8, v7

    :cond_0
    sput-boolean v8, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    .line 403
    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mIncomingCallColor:I

    .line 404
    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mMissCallColor:I

    .line 405
    const/16 v1, 0x9

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mSmsColor:I

    .line 406
    const/16 v1, 0xa

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mEmailColor:I

    .line 407
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mVoiceMailColor:I

    .line 408
    const/16 v1, 0xc

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mReminderColor:I

    .line 409
    const/16 v1, 0xd

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mAlarmColor:I

    .line 411
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    :goto_6
    return v7

    :cond_1
    move v1, v8

    .line 395
    goto :goto_0

    :cond_2
    move v1, v8

    .line 396
    goto :goto_1

    :cond_3
    move v1, v8

    .line 397
    goto :goto_2

    :cond_4
    move v1, v8

    .line 398
    goto :goto_3

    :cond_5
    move v1, v8

    .line 399
    goto :goto_4

    :cond_6
    move v1, v8

    .line 400
    goto :goto_5

    .line 414
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move v7, v8

    .line 417
    goto :goto_6
.end method

.method private static saveSetting(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 431
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "nfl"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 440
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->incoming_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 441
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->miss_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 442
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->sms:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 443
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->email:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 444
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->voice_mail:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 445
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->reminder:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 446
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->alarm:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 448
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->incoming_call_color:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mIncomingCallColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->miss_call_color:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mMissCallColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->sms_color:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mSmsColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->email_color:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mEmailColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->voice_mail_color:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mVoiceMailColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->reminder_color:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mReminderColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->alarm_color:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mAlarmColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    :try_start_1
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "nfl"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 434
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 435
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "saveSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 460
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 461
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "saveSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setAlarm(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bAlarm"

    .prologue
    .line 269
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    .line 271
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    const-string v0, "NotificationFlashLightUtility setAlarm"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string v0, "NotificationFlashLightUtility setAlarm"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setAlarmColor(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "iAlarmColor"

    .prologue
    .line 352
    sput p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mAlarmColor:I

    .line 354
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 355
    const-string v0, "NotificationFlashLightUtility setAlarmColor"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    const-string v0, "NotificationFlashLightUtility setAlarmColor"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setEmail(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bEmail"

    .prologue
    .line 239
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    .line 241
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 242
    const-string v0, "NotificationFlashLightUtility setEmail"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string v0, "NotificationFlashLightUtility setEmail"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setEmailColor(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "iEmailColor"

    .prologue
    .line 322
    sput p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mEmailColor:I

    .line 324
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    const-string v0, "NotificationFlashLightUtility setEmailColor"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v0, "NotificationFlashLightUtility setEmailColor"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIncomingCall(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bIncomingCall"

    .prologue
    .line 209
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    .line 211
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    const-string v0, "NotificationFlashLightUtility setIncomingCall"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v0, "NotificationFlashLightUtility setIncomingCall"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIncomingCallColor(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "iIncomingCallColor"

    .prologue
    .line 292
    sput p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mIncomingCallColor:I

    .line 294
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 295
    const-string v0, "NotificationFlashLightUtility setIncomingCallColor"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v0, "NotificationFlashLightUtility setIncomingCallColor"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMissCall(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bMissCall"

    .prologue
    .line 219
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    .line 221
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 222
    const-string v0, "NotificationFlashLightUtility setMissCall"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v0, "NotificationFlashLightUtility setMissCall"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMissCallColor(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "iMissCallColor"

    .prologue
    .line 302
    sput p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mMissCallColor:I

    .line 304
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    const-string v0, "NotificationFlashLightUtility setMissCallColor"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string v0, "NotificationFlashLightUtility setMissCallColor"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setReminder(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bReminder"

    .prologue
    .line 259
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    .line 261
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 262
    const-string v0, "NotificationFlashLightUtility setReminder"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string v0, "NotificationFlashLightUtility setReminder"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setReminderColor(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "iReminderColor"

    .prologue
    .line 342
    sput p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mReminderColor:I

    .line 344
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 345
    const-string v0, "NotificationFlashLightUtility setReminderColor"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    const-string v0, "NotificationFlashLightUtility setReminderColor"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSms(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bSms"

    .prologue
    .line 229
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    .line 231
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    const-string v0, "NotificationFlashLightUtility setSms"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v0, "NotificationFlashLightUtility setSms"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSmsColor(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "iSmsColor"

    .prologue
    .line 312
    sput p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mSmsColor:I

    .line 314
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 315
    const-string v0, "NotificationFlashLightUtility setSmsColor"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    const-string v0, "NotificationFlashLightUtility setSmsColor"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setVoiceMail(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bVoiceMail"

    .prologue
    .line 249
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    .line 251
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 252
    const-string v0, "NotificationFlashLightUtility setVoiceMail"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v0, "NotificationFlashLightUtility setVoiceMail"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setVoiceMailColor(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "iVoiceMailColor"

    .prologue
    .line 332
    sput p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mVoiceMailColor:I

    .line 334
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 335
    const-string v0, "NotificationFlashLightUtility setVoiceMailColor"

    const-string v1, "save success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    const-string v0, "NotificationFlashLightUtility setVoiceMailColor"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
