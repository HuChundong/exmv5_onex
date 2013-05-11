.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Ljava/lang/Object;
.source "UiccController.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UiccController"

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;


# instance fields
.field private mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mIsCurrentCard3gpp:Z


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v0, "Creating UiccController"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->setNewPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 106
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 0
    .parameter "phone"
    .parameter "slot"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->setNewPhone(Lcom/android/internal/telephony/PhoneBase;I)V

    .line 114
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 7
    .parameter "phone"

    .prologue
    .line 52
    const-class v3, Lcom/android/internal/telephony/uicc/UiccController;

    monitor-enter v3

    const/4 v0, -0x1

    .line 53
    .local v0, otherInstanceIndex:I
    if-eqz p0, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 72
    :cond_0
    :goto_0
    if-ltz v0, :cond_4

    .line 74
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_2

    .line 75
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 82
    :cond_1
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 83
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v4, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Lcom/android/internal/telephony/PhoneBase;I)V

    aput-object v4, v2, v0

    .line 87
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v2, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_3
    monitor-exit v3

    return-object v2

    .line 56
    :sswitch_0
    :try_start_1
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 59
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    const/high16 v4, 0x6000

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;

    array-length v2, v2

    add-int/lit8 v4, v0, 0x1

    if-ge v2, v4, :cond_1

    .line 78
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Lcom/android/internal/telephony/uicc/UiccController;

    .line 79
    .local v1, replacedInstances:[Lcom/android/internal/telephony/uicc/UiccController;
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;

    array-length v6, v6

    invoke-static {v2, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 52
    .end local v1           #replacedInstances:[Lcom/android/internal/telephony/uicc/UiccController;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 85
    :cond_3
    :try_start_2
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstanceOthers:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v2, v2, v0

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->setNewPhone(Lcom/android/internal/telephony/PhoneBase;I)V

    goto :goto_2

    .line 91
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_5

    .line 92
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 96
    :goto_4
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    goto :goto_3

    .line 94
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->setNewPhone(Lcom/android/internal/telephony/PhoneBase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 182
    const-string v0, "RIL_UiccController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method private setNewPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 110
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->setNewPhone(Lcom/android/internal/telephony/PhoneBase;I)V

    .line 111
    return-void
.end method

.method private setNewPhone(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 3
    .parameter "phone"
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 118
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New phone is GSMPhone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->updateCurrentCard(Z)V

    .line 146
    :goto_0
    return-void

    .line 127
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New phone type is CDMALTEPhone on slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->updateCurrentCard(Z)V

    goto :goto_0

    .line 135
    :cond_1
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New phone type is CDMAPhone on slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->updateCurrentCard(Z)V

    goto :goto_0

    .line 144
    :cond_2
    const-string v0, "RIL_UiccController"

    const-string v1, "Unhandled phone type. Critical error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCurrentCard(Z)V
    .locals 5
    .parameter "isNewCard3gpp"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsCurrentCard3gpp:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 158
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsCurrentCard3gpp:Z

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_2

    .line 170
    new-instance v0, Lcom/android/internal/telephony/IccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    goto :goto_0

    .line 174
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    goto :goto_0
.end method


# virtual methods
.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    return-object v0
.end method
