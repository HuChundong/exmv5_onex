.class public Lcom/htc/socialnetwork/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field fromId:Ljava/lang/String;

.field id:Ljava/lang/String;

.field text:Ljava/lang/String;

.field time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/socialnetwork/Comment;->fromId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/socialnetwork/Comment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/socialnetwork/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/htc/socialnetwork/Comment;->time:J

    return-wide v0
.end method

.method public setFromId(Ljava/lang/String;)V
    .locals 0
    .parameter "fromId"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/socialnetwork/Comment;->fromId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/socialnetwork/Comment;->id:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/socialnetwork/Comment;->text:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/htc/socialnetwork/Comment;->time:J

    .line 73
    return-void
.end method
