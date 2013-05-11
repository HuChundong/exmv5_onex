.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "card"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected appendFilePath(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 221
    move v1, p1

    .line 222
    .local v1, newEfid:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->isCommonIccFile(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v2, sb:Ljava/lang/StringBuilder;
    const/16 v3, 0x6f31

    if-ne p1, v3, :cond_0

    .line 225
    const-string v3, "7F25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, fileid:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 231
    .end local v0           #fileid:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return v1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .parameter "efid"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getUSIMEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 86
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .local v0, path:Ljava/lang/String;
    move-object v1, v0

    .line 135
    goto :goto_0

    .line 88
    .end local v0           #path:Ljava/lang/String;
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3F007F10"

    goto :goto_0

    :cond_1
    const-string v1, "7F10"

    goto :goto_0

    .line 90
    :sswitch_1
    const-string v1, "7F25"

    goto :goto_0

    .line 116
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3F007F20"

    goto :goto_0

    :cond_2
    const-string v1, "7F20"

    goto :goto_0

    .line 120
    :sswitch_3
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_3
        0x6f05 -> :sswitch_2
        0x6f11 -> :sswitch_2
        0x6f13 -> :sswitch_2
        0x6f14 -> :sswitch_2
        0x6f15 -> :sswitch_2
        0x6f16 -> :sswitch_2
        0x6f17 -> :sswitch_2
        0x6f18 -> :sswitch_2
        0x6f31 -> :sswitch_1
        0x6f38 -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_2
        0x6f45 -> :sswitch_2
        0x6f46 -> :sswitch_2
        0x6f62 -> :sswitch_2
        0x6f7b -> :sswitch_2
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_2
        0x6fc7 -> :sswitch_2
        0x6fc8 -> :sswitch_2
        0x6fc9 -> :sswitch_2
        0x6fca -> :sswitch_2
        0x6fcb -> :sswitch_2
        0x6fcd -> :sswitch_2
    .end sparse-switch
.end method

.method protected getUSIMEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    .line 140
    sparse-switch p1, :sswitch_data_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_7

    const/16 v1, 0x2fe2

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_7

    .line 210
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMFileHandler;->DFPhonebookPath:Ljava/lang/String;

    .line 213
    .end local v0           #path:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 164
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3F007FFF"

    goto :goto_0

    :cond_1
    const-string v1, "7FFF"

    goto :goto_0

    .line 166
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3F00"

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 173
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 175
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    const-string v1, "7F10"

    goto :goto_0

    .line 178
    :cond_4
    const-string v1, "3F007F10"

    goto :goto_0

    .line 188
    :sswitch_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 189
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 190
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 191
    const-string v1, "7F20"

    goto :goto_0

    .line 193
    :cond_6
    const-string v1, "3F007F20"

    goto :goto_0

    .line 201
    :sswitch_4
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    .restart local v0       #path:Ljava/lang/String;
    :cond_7
    move-object v1, v0

    .line 213
    goto :goto_0

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x2f00 -> :sswitch_1
        0x4f22 -> :sswitch_4
        0x4f23 -> :sswitch_4
        0x4f24 -> :sswitch_4
        0x4f30 -> :sswitch_4
        0x6f05 -> :sswitch_0
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f45 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6f4b -> :sswitch_2
        0x6f4c -> :sswitch_2
        0x6f4e -> :sswitch_0
        0x6f62 -> :sswitch_0
        0x6f7b -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 66
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SimFileHandler drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 236
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 240
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method
