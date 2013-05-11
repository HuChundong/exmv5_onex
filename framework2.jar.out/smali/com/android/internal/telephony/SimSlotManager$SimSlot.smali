.class public Lcom/android/internal/telephony/SimSlotManager$SimSlot;
.super Landroid/os/Handler;
.source "SimSlotManager.java"

# interfaces
.implements Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimSlot"
.end annotation


# static fields
.field public static final EVENT_GET_ICCID_DONE:I = 0x1


# instance fields
.field private mCardIsChanged:Z

.field private mCdmaImsi:Ljava/lang/String;

.field private mGsmImsi:Ljava/lang/String;

.field private mIccid:Ljava/lang/String;

.field private mIdentifyDone:Z

.field private mLastIccid:Ljava/lang/String;

.field private mMsg:Landroid/os/Message;

.field private mPIN:Ljava/lang/String;

.field private mPhoneType:I

.field protected mSimType:I

.field private mSlot:I

.field private mVerifiedPIN:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/SimSlotManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SimSlotManager;I)V
    .locals 5
    .parameter
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1216
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1197
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1198
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1199
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    .line 1204
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1207
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCardIsChanged:Z

    .line 1209
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1210
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mMsg:Landroid/os/Message;

    .line 1212
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    .line 1214
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    .line 1217
    #calls: Lcom/android/internal/telephony/SimSlotManager;->doSlotIdMapping(I)I
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SimSlotManager;->access$1100(Lcom/android/internal/telephony/SimSlotManager;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    .line 1219
    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SimSlotManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1220
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.basewin.ssm.slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".iccid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mLastIccid:Ljava/lang/String;

    .line 1221
    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " last iccid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mLastIccid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SimSlotManager;->getPhoneForSlot(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 1225
    .local v0, ph:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x2fe2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1228
    return-void
.end method


# virtual methods
.method public cancelPIN()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1267
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    .line 1269
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    .line 1270
    return-void
.end method

.method public cardIsChanged()Z
    .locals 3

    .prologue
    .line 1318
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCardIsChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCardIsChanged:Z

    return v0
.end method

.method public confirmPIN()V
    .locals 3

    .prologue
    .line 1260
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmPIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    .line 1264
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    .line 1265
    return-void
.end method

.method public getCdmaImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1282
    const-string v0, ""

    .line 1285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCdmaMccMnc()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 1290
    :cond_0
    const-string v0, ""

    .line 1293
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGsmImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1298
    const-string v0, ""

    .line 1301
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGsmMccMnc()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 1306
    :cond_0
    const-string v0, ""

    .line 1309
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPINCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1273
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPINCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1232
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1254
    :goto_0
    return-void

    .line 1234
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1235
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1237
    .local v1, data:[B
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1238
    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read iccid fail for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1242
    :cond_0
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    .line 1244
    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccid for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p0}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->updateIccid()V

    goto :goto_0

    .line 1232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public identifyPhone(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Message;)V
    .locals 7
    .parameter "phone"
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1350
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1351
    .local v0, cardState:Lcom/android/internal/telephony/IccCard$State;
    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Identify phone card state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1354
    iput v5, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1355
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1356
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1357
    iput-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1359
    if-eqz p2, :cond_0

    .line 1360
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1366
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_3

    .line 1368
    :cond_2
    iput v5, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1369
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1370
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1371
    iput-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1373
    if-eqz p2, :cond_0

    .line 1374
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1380
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    iget v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SimSlotManager;->getPhoneForSlot(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 1388
    .local v1, state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->updateIccid(Ljava/lang/String;)V

    .line 1389
    iput v5, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1390
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1391
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1392
    iput-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1393
    if-eqz p2, :cond_0

    .line 1394
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public isCTDualmodeCard()Z
    .locals 2

    .prologue
    .line 1346
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualmodeCard()Z
    .locals 1

    .prologue
    .line 1335
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    packed-switch v0, :pswitch_data_0

    .line 1341
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1339
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1335
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isIdentifyDone()Z
    .locals 3

    .prologue
    .line 1313
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " identifydone flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    return v0
.end method

.method public onIdentifyDone(Lcom/android/internal/telephony/SimIdentify;)V
    .locals 3
    .parameter "instance"

    .prologue
    .line 1400
    invoke-virtual {p1}, Lcom/android/internal/telephony/SimIdentify;->getSimType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1401
    invoke-virtual {p1}, Lcom/android/internal/telephony/SimIdentify;->getCDMAImsi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1402
    invoke-virtual {p1}, Lcom/android/internal/telephony/SimIdentify;->getGSMImsi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1405
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "identify done, simtype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cdma imsi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gsm imsi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mMsg:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1409
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mMsg:Landroid/os/Message;

    .line 1411
    return-void
.end method

.method public preparePIN(Ljava/lang/String;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 1256
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    .line 1257
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare pin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-void
.end method

.method public updateIccid()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1329
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mLastIccid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCardIsChanged:Z

    .line 1330
    const-string v1, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update iccid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "SimSlotManager"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1332
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.basewin.ssm.slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".iccid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1333
    return-void

    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    move v1, v2

    .line 1329
    goto :goto_0
.end method

.method public updateIccid(Ljava/lang/String;)V
    .locals 1
    .parameter "newIccid"

    .prologue
    .line 1322
    if-nez p1, :cond_0

    .line 1323
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    .line 1326
    :goto_0
    return-void

    .line 1325
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    goto :goto_0
.end method
