.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$CliValid;,
        Lcom/android/internal/telephony/Connection$DisconnectCause;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field public static PRESENTATION_ALLOWED:I

.field public static PRESENTATION_PAYPHONE:I

.field public static PRESENTATION_RESTRICTED:I

.field public static PRESENTATION_UNKNOWN:I


# instance fields
.field protected cnapName:Ljava/lang/String;

.field protected cnapNamePresentation:I

.field isCollided:Z

.field public mHasUpdatedCallLog:Z

.field private mMapUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    .line 29
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    .line 32
    const-string v0, "TelephonyConnection"

    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->isCollided:Z

    return-void
.end method


# virtual methods
.method public abstract FWIMReceived()Z
.end method

.method public addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "data"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract cancelPostDial()V
.end method

.method public clearUserData()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->userData:Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getCCWT()Z
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getCallDurationMillis()J
.end method

.method public abstract getCliValid()Lcom/android/internal/telephony/Connection$CliValid;
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getConnectTime()J
.end method

.method public abstract getCreateTime()J
.end method

.method public abstract getDialString()Ljava/lang/String;
.end method

.method public abstract getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
.end method

.method public abstract getDisconnectTime()J
.end method

.method public abstract getDurationMillis()J
.end method

.method public abstract getFWIMTime()J
.end method

.method public getHasUpdatedCallLog()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    return v0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getRawDisconnectCause()I
.end method

.method public abstract getRawDisonnectCause()I
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 208
    .local v0, c:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 209
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 211
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract htcGetPreviousStateBeforeDisconnected()Lcom/android/internal/telephony/Call$State;
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isCollided()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->isCollided:Z

    return v0
.end method

.method public abstract isIncoming()Z
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public abstract isVTCall()Z
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public removeUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract requestFallBack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract setCCWT(Z)V
.end method

.method public abstract setCliValid(Lcom/android/internal/telephony/Connection$CliValid;)V
.end method

.method public setCollided(Z)V
    .locals 0
    .parameter "collided"

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->isCollided:Z

    .line 481
    return-void
.end method

.method public setHasUpdatedCallLog(Z)V
    .locals 0
    .parameter "updated"

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    .line 354
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "userdata"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->userData:Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    .local v0, str:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pres.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " postdial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cnap name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " post dial state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
