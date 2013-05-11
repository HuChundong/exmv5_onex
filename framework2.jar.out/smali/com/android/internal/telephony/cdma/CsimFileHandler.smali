.class public final Lcom/android/internal/telephony/cdma/CsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "card"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V
    .locals 2
    .parameter "phone"
    .parameter "slotId"
    .parameter "appId"

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 47
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "CDMA"

    const-string v1, "CsimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 58
    sparse-switch p1, :sswitch_data_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/internal/telephony/cdma/CsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    .line 95
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 81
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/cdma/CsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_1
        0x6f22 -> :sswitch_0
        0x6f32 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f41 -> :sswitch_0
        0x6f44 -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4d -> :sswitch_0
        0x6f74 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CsimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 106
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CsimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
