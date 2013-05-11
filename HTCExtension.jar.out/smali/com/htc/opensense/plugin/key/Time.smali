.class public abstract Lcom/htc/opensense/plugin/key/Time;
.super Ljava/lang/Object;
.source "Time.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/opensense/plugin/key/Time;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/htc/opensense/plugin/key/Time;->mTime:J

    .line 20
    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/htc/opensense/plugin/key/Time;->mTime:J

    return-wide v0
.end method
