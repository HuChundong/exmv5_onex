.class public Lcom/htc/wrap/android/telephony/gsm/HtcWrapSmsManager;
.super Ljava/lang/Object;
.source "HtcWrapSmsManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyMessageToSimForResult(Landroid/telephony/gsm/SmsManager;[B[BI)I
    .locals 2
    .parameter "smsMgr"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/gsm/SmsManager;->copyMessageToSimForResult([B[BI)I

    move-result v0

    return v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendMultipartDataMessage(Landroid/telephony/gsm/SmsManager;Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/gsm/SmsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    .local p4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/gsm/SmsManager;->sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
