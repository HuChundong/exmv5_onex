.class public Lcom/htc/socialnetwork/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mStatusId:J

.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/socialnetwork/Status;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/htc/socialnetwork/Status;->mStatusId:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/htc/socialnetwork/Status;->mTime:J

    return-wide v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/socialnetwork/Status;->mMessage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setStatusId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/htc/socialnetwork/Status;->mStatusId:J

    .line 49
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/htc/socialnetwork/Status;->mTime:J

    .line 21
    return-void
.end method
