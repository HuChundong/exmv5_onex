.class public Lcom/htc/wrap/android/telephony/HtcWrapTelephonyManager;
.super Ljava/lang/Object;
.source "HtcWrapTelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED_EXT:Ljava/lang/String; = "android.intent.action.PHONE_STATE_EXT"

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final ICC_STATE_ABSENT:I = 0x1

.field public static final ICC_STATE_NETWORK_LOCKED:I = 0x4

.field public static final ICC_STATE_PIN_REQUIRED:I = 0x2

.field public static final ICC_STATE_PUK_REQUIRED:I = 0x3

.field public static final ICC_STATE_READY:I = 0x5

.field public static final ICC_STATE_UNKNOWN:I = 0x0

.field public static final ICC_TYPE_2G:I = 0x2

.field public static final ICC_TYPE_3G:I = 0x3

.field public static final ICC_TYPE_NO_ICC:I = 0x1

.field public static final ICC_TYPE_SIM:I = 0x1

.field public static final ICC_TYPE_TITAN_LITE_SIM_CARD:I = 0x4

.field public static final ICC_TYPE_UIM:I = 0x2

.field public static final ICC_TYPE_UNKNOW:I = 0x0

.field public static final ICC_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIMAX:I = 0x10

.field public static final PHONE_TYPE_KEY:Ljava/lang/String; = "phone_type"

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x2

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x5

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x4

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x8

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x9

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x3

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x1

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x6

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x7

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_NETWORK_SEARCHING:I = 0x4

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3

.field public static final UIM_STATE_ABSENT:I = 0x1

.field public static final UIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final UIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final UIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final UIM_STATE_READY:I = 0x5

.field public static final UIM_STATE_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static answerRingingCall(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1074
    if-eqz p0, :cond_0

    .line 1075
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->answerRingingCall()V

    .line 1076
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static call(Landroid/telephony/TelephonyManager;Ljava/lang/String;)V
    .locals 2
    .parameter "telMgr"
    .parameter "number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1001
    if-eqz p0, :cond_0

    .line 1002
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->call(Ljava/lang/String;)V

    .line 1003
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cancelMissedCallsNotification(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1171
    if-eqz p0, :cond_0

    .line 1172
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->cancelMissedCallsNotification()V

    .line 1173
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkTestIcc(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 738
    if-eqz p0, :cond_0

    .line 739
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->checkTestIcc()Z

    move-result v0

    return v0

    .line 740
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static confirmFirstDataRoaming(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    if-eqz p0, :cond_0

    .line 481
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->confirmFirstDataRoaming()V

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dial(Landroid/telephony/TelephonyManager;Ljava/lang/String;)V
    .locals 2
    .parameter "telMgr"
    .parameter "number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 988
    if-eqz p0, :cond_0

    .line 989
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->dial(Ljava/lang/String;)V

    .line 990
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dialWithoutDelay(Landroid/telephony/TelephonyManager;Landroid/content/Intent;)Z
    .locals 2
    .parameter "telMgr"
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    if-eqz p0, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->dialWithoutDelay(Landroid/content/Intent;)Z

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static disableApnType(Landroid/telephony/TelephonyManager;Ljava/lang/String;)I
    .locals 2
    .parameter "telMgr"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1283
    if-eqz p0, :cond_0

    .line 1284
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1285
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static disableDataConnectivity(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1305
    if-eqz p0, :cond_0

    .line 1306
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    move-result v0

    return v0

    .line 1307
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static disableLocationUpdates(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1259
    if-eqz p0, :cond_0

    .line 1260
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->disableLocationUpdates()V

    .line 1261
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enableApnType(Landroid/telephony/TelephonyManager;Ljava/lang/String;)I
    .locals 2
    .parameter "telMgr"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1271
    if-eqz p0, :cond_0

    .line 1272
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1273
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enableDataConnectivity(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1294
    if-eqz p0, :cond_0

    .line 1295
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0

    .line 1296
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enableLocationUpdates(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1248
    if-eqz p0, :cond_0

    .line 1249
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->enableLocationUpdates()V

    .line 1250
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enableMpdp(Landroid/telephony/TelephonyManager;Z)V
    .locals 2
    .parameter "telMgr"
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 884
    if-eqz p0, :cond_0

    .line 885
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->enableMpdp(Z)V

    .line 886
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static endCall(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1050
    if-eqz p0, :cond_0

    .line 1051
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->endCall()Z

    move-result v0

    return v0

    .line 1052
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActiveCallConnectTime(Landroid/telephony/TelephonyManager;)J
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 614
    if-eqz p0, :cond_0

    .line 615
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveCallConnectTime()J

    move-result-wide v0

    return-wide v0

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActiveCallNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 597
    if-eqz p0, :cond_0

    .line 598
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 599
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivePDPList(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 893
    if-eqz p0, :cond_0

    .line 894
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActivePDPList()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 895
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivePhoneType(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1371
    if-eqz p0, :cond_0

    .line 1372
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActivePhoneType()I

    move-result v0

    return v0

    .line 1373
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBackgroundCallNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 606
    if-eqz p0, :cond_0

    .line 607
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCFUNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCFUNumberFromOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    if-eqz p0, :cond_0

    .line 266
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCallState(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1343
    if-eqz p0, :cond_0

    .line 1344
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0

    .line 1345
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCdmaEriIconIndex(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1382
    if-eqz p0, :cond_0

    .line 1383
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    return v0

    .line 1384
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCdmaEriIconMode(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1395
    if-eqz p0, :cond_0

    .line 1396
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v0

    return v0

    .line 1397
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCdmaEriText(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1406
    if-eqz p0, :cond_0

    .line 1407
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1408
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCdmaNeedsProvisioning(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1431
    if-eqz p0, :cond_0

    .line 1432
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaNeedsProvisioning()Z

    move-result v0

    return v0

    .line 1433
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCellLocation(Landroid/telephony/TelephonyManager;)Landroid/telephony/CellLocation;
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1325
    if-eqz p0, :cond_0

    .line 1326
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0

    .line 1327
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurrentCallState(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 756
    if-eqz p0, :cond_0

    .line 757
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentCallState()I

    move-result v0

    return v0

    .line 758
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurrentPhoneType(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDataActivity(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1350
    if-eqz p0, :cond_0

    .line 1351
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0

    .line 1352
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDataState(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1357
    if-eqz p0, :cond_0

    .line 1358
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0

    .line 1359
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDetailIccStatus(Landroid/telephony/TelephonyManager;)[I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    if-eqz p0, :cond_0

    .line 466
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDetailIccStatus()[I

    move-result-object v0

    return-object v0

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDeviceId(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .parameter "account"

    .prologue
    .line 299
    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGprsState(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getGprsState()I

    move-result v0

    return v0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGsmNetworkType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 729
    if-eqz p0, :cond_0

    .line 730
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getGsmNetworkType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHtcDeviceSlotType(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    if-eqz p0, :cond_0

    .line 281
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHtcNetworkType(Landroid/telephony/TelephonyManager;[Ljava/lang/String;)I
    .locals 2
    .parameter "telMgr"
    .parameter "stack"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    if-eqz p0, :cond_0

    .line 822
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 823
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIccType(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIccType()I

    move-result v0

    return v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIncallRecordingFileName(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 666
    if-eqz p0, :cond_0

    .line 667
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIncallRecordingFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLastError(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1476
    if-eqz p0, :cond_0

    .line 1477
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLastError()I

    move-result v0

    return v0

    .line 1478
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLine1AlphaTag(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .parameter "account"

    .prologue
    .line 354
    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLine1Number(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .parameter "account"

    .prologue
    .line 335
    if-eqz p0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNeighboringCellInfo(Landroid/telephony/TelephonyManager;)Ljava/util/List;
    .locals 2
    .parameter "telMgr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1336
    if-eqz p0, :cond_0

    .line 1337
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1338
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNetworkType(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1453
    if-eqz p0, :cond_0

    .line 1454
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0

    .line 1455
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPdnSettings(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .parameter "profileSlot"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    if-eqz p0, :cond_0

    .line 771
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 772
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPowerKeyFlag(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 641
    if-eqz p0, :cond_0

    .line 642
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPowerKeyFlag()Z

    move-result v0

    return v0

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPreferredNetworkType(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 800
    if-eqz p0, :cond_0

    .line 801
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType()I

    move-result v0

    return v0

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getServiceState(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    if-eqz p0, :cond_0

    .line 494
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    return v0

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSubscriberId(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .parameter "account"

    .prologue
    .line 317
    if-eqz p0, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSubsidyLockTypes(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    if-eqz p0, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubsidyLockTypes()I

    move-result v0

    return v0

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUSSDVerificationStatus(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    if-eqz p0, :cond_0

    .line 834
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 835
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUSSDVerificationStrings(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 851
    if-eqz p0, :cond_0

    .line 852
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 853
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVTLoopBackMode(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 720
    if-eqz p0, :cond_0

    .line 721
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVTLoopBackMode()Z

    move-result v0

    return v0

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVTSimulatedMode(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 702
    if-eqz p0, :cond_0

    .line 703
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVTSimulatedMode()Z

    move-result v0

    return v0

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVoiceMessageCount(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1442
    if-eqz p0, :cond_0

    .line 1443
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v0

    return v0

    .line 1444
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static handlePinMmi(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Z
    .locals 2
    .parameter "telMgr"
    .parameter "dialString"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1201
    if-eqz p0, :cond_0

    .line 1202
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1203
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasIccCard(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"

    .prologue
    .line 1464
    if-eqz p0, :cond_0

    .line 1465
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0

    .line 1466
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasVTCall(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 747
    if-eqz p0, :cond_0

    .line 748
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->hasVTCall()Z

    move-result v0

    return v0

    .line 749
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static htcCdmaEndCall(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    if-eqz p0, :cond_0

    .line 579
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->htcCdmaEndCall()Z

    move-result v0

    return v0

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static htcCdmaExitRadioPowerSaveMode(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 560
    if-eqz p0, :cond_0

    .line 561
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->htcCdmaExitRadioPowerSaveMode()V

    .line 562
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static htcModemLinkOn(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v0

    return v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isCallWaiting(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 650
    if-eqz p0, :cond_0

    .line 651
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isCallWaiting()Z

    move-result v0

    return v0

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isDataConnectivityPossible(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1317
    if-eqz p0, :cond_0

    .line 1318
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataConnectivityPossible()Z

    move-result v0

    return v0

    .line 1319
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFdnEnabled(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isFdnEnabled()Z

    move-result v0

    return v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isIdle(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1133
    if-eqz p0, :cond_0

    .line 1134
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isIdle()Z

    move-result v0

    return v0

    .line 1135
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isOffhook(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1107
    if-eqz p0, :cond_0

    .line 1108
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v0

    return v0

    .line 1109
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isRadioOn(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1146
    if-eqz p0, :cond_0

    .line 1147
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    move-result v0

    return v0

    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isRinging(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1120
    if-eqz p0, :cond_0

    .line 1121
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isRinging()Z

    move-result v0

    return v0

    .line 1122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSimPinEnabled(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1159
    if-eqz p0, :cond_0

    .line 1160
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSimPinEnabled()Z

    move-result v0

    return v0

    .line 1161
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static needsOtaServiceProvisioning(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1419
    if-eqz p0, :cond_0

    .line 1420
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0

    .line 1421
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static performHtcPhoneAction(Landroid/telephony/TelephonyManager;I)V
    .locals 2
    .parameter "telMgr"
    .parameter "action"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 875
    if-eqz p0, :cond_0

    .line 876
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->performHtcPhoneAction(I)V

    .line 877
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestCW_UW_DREG(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 972
    if-eqz p0, :cond_0

    .line 973
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->requestCW_UW_DREG()V

    .line 974
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestCW_UW_REG(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 963
    if-eqz p0, :cond_0

    .line 964
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->requestCW_UW_REG()V

    .line 965
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestGetEhrpdDeviceCapability(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 394
    if-eqz p0, :cond_0

    .line 395
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->requestGetEhrpdDeviceCapability()I

    move-result v0

    return v0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestGetEhrpdDisableCapability(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    if-eqz p0, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->requestGetEhrpdDisableCapability()I

    move-result v0

    return v0

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestISIMRead(Landroid/telephony/TelephonyManager;IIIII)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 925
    if-eqz p0, :cond_0

    .line 926
    invoke-virtual/range {p0 .. p5}, Landroid/telephony/TelephonyManager;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 927
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestQueryISIMSupported(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 916
    if-eqz p0, :cond_0

    .line 917
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->requestQueryISIMSupported()Z

    move-result v0

    return v0

    .line 918
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestResetWSIMState(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 943
    if-eqz p0, :cond_0

    .line 944
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->requestResetWSIMState()Z

    move-result v0

    return v0

    .line 945
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestSetEhrpdDisableCapability(Landroid/telephony/TelephonyManager;I)V
    .locals 2
    .parameter "telMgr"
    .parameter "ehrpdmode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    if-eqz p0, :cond_0

    .line 367
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->requestSetEhrpdDisableCapability(I)V

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestSetISIMAUTH(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .parameter "command"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 934
    if-eqz p0, :cond_0

    .line 935
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 936
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestSetLBSNTFY(Landroid/telephony/TelephonyManager;I)V
    .locals 2
    .parameter "telMgr"
    .parameter "lbsvalue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 953
    if-eqz p0, :cond_0

    .line 954
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->requestSetLBSNTFY(I)V

    .line 955
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resetPdnForSettingsChange(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 788
    if-eqz p0, :cond_0

    .line 789
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->resetPdnForSettingsChange()V

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendAT_BRIC(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 505
    if-eqz p0, :cond_0

    .line 506
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->sendAT_BRIC()V

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendAT_PushMail(Landroid/telephony/TelephonyManager;II)V
    .locals 2
    .parameter "telMgr"
    .parameter "type"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    if-eqz p0, :cond_0

    .line 543
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->sendAT_PushMail(II)V

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendAllowedCSIMCommand(Landroid/telephony/TelephonyManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "telMgr"
    .parameter "command"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 589
    if-eqz p0, :cond_0

    .line 590
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendCmmbAuth3GReq(Landroid/telephony/TelephonyManager;[B[B)[B
    .locals 2
    .parameter "telMgr"
    .parameter "szRAND"
    .parameter "szAUTN"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 675
    if-eqz p0, :cond_0

    .line 676
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v0

    return-object v0

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendCmmbAuthGSMReq(Landroid/telephony/TelephonyManager;[B)[B
    .locals 2
    .parameter "telMgr"
    .parameter "szRAND"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 684
    if-eqz p0, :cond_0

    .line 685
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->sendCmmbAuthGSMReq([B)[B

    move-result-object v0

    return-object v0

    .line 686
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendLanguageChange(Landroid/telephony/TelephonyManager;I)V
    .locals 2
    .parameter "telMgr"
    .parameter "languageCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 902
    if-eqz p0, :cond_0

    .line 903
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->sendLanguageChange(I)V

    .line 904
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCFUNumber(Landroid/telephony/TelephonyManager;ZLjava/lang/String;)Z
    .locals 2
    .parameter "telMgr"
    .parameter "enable"
    .parameter "dialNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setPdnSettings(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V
    .locals 2
    .parameter "telMgr"
    .parameter "profileSlot"
    .parameter "settings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 779
    if-eqz p0, :cond_0

    .line 780
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->setPdnSettings(ILjava/lang/String;)V

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setPowerKeyFlag(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 632
    if-eqz p0, :cond_0

    .line 633
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->setPowerKeyFlag()V

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setPreferredNetworkType(Landroid/telephony/TelephonyManager;I)V
    .locals 2
    .parameter "telMgr"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 809
    if-eqz p0, :cond_0

    .line 810
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(I)V

    .line 811
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setRadio(Landroid/telephony/TelephonyManager;Z)Z
    .locals 2
    .parameter "telMgr"
    .parameter "turnOn"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1225
    if-eqz p0, :cond_0

    .line 1226
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setRadio(Z)Z

    move-result v0

    return v0

    .line 1227
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTimeZone(Landroid/telephony/TelephonyManager;ZI)V
    .locals 2
    .parameter "telMgr"
    .parameter "sign"
    .parameter "offset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 531
    if-eqz p0, :cond_0

    .line 532
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->setTimeZone(ZI)V

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUSSDVerificationStatus(Landroid/telephony/TelephonyManager;Ljava/lang/String;)V
    .locals 2
    .parameter "telMgr"
    .parameter "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 842
    if-eqz p0, :cond_0

    .line 843
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 844
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUSSDVerificationStrings(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "telMgr"
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 863
    if-eqz p0, :cond_0

    .line 864
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setVTLoopBackMode(Landroid/telephony/TelephonyManager;Z)V
    .locals 2
    .parameter "telMgr"
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 711
    if-eqz p0, :cond_0

    .line 712
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setVTLoopBackMode(Z)V

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setVTSimulatedMode(Landroid/telephony/TelephonyManager;Z)V
    .locals 2
    .parameter "telMgr"
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 693
    if-eqz p0, :cond_0

    .line 694
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setVTSimulatedMode(Z)V

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static showCallScreen(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1017
    if-eqz p0, :cond_0

    .line 1018
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->showCallScreen()Z

    move-result v0

    return v0

    .line 1019
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static showCallScreenWithDialpad(Landroid/telephony/TelephonyManager;Z)Z
    .locals 2
    .parameter "telMgr"
    .parameter "showDialpad"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1037
    if-eqz p0, :cond_0

    .line 1038
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->showCallScreenWithDialpad(Z)Z

    move-result v0

    return v0

    .line 1039
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static silenceRinger(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1094
    if-eqz p0, :cond_0

    .line 1095
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->silenceRinger()V

    .line 1096
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static supplyPin(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Z
    .locals 2
    .parameter "telMgr"
    .parameter "pin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1185
    if-eqz p0, :cond_0

    .line 1186
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->supplyPin(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1187
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static supplySubsidyLockPin(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "telMgr"
    .parameter "type"
    .parameter "pin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 448
    if-eqz p0, :cond_0

    .line 449
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static switchHoldAndActiveCall(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 623
    if-eqz p0, :cond_0

    .line 624
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->switchHoldAndActiveCall()V

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toggleRadioOnOff(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1213
    if-eqz p0, :cond_0

    .line 1214
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->toggleRadioOnOff()V

    .line 1215
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unBlockPin(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "telMgr"
    .parameter "puk"
    .parameter "newpin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    if-eqz p0, :cond_0

    .line 416
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateServiceLocation(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1237
    if-eqz p0, :cond_0

    .line 1238
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->updateServiceLocation()V

    .line 1239
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public requestEhrpdDomainNameChangeState(Landroid/telephony/TelephonyManager;)I
    .locals 2
    .parameter "telMgr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->requestEhrpdDomainNameChangeState()I

    move-result v0

    return v0

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "telMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
