.class public Lcom/htc/wrap/android/telephony/gsm/HtcWrapSmsMessage;
.super Ljava/lang/Object;
.source "HtcWrapSmsMessage.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getdataCodingScheme(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getdataCodingScheme()I

    move-result v0

    return v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
