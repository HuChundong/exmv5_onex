.class Landroid/os/MessageQueue$1;
.super Ljava/lang/Object;
.source "MessageQueue.java"

# interfaces
.implements Landroid/os/MessageQueue$TicketAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/MessageQueue;


# direct methods
.method constructor <init>(Landroid/os/MessageQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Landroid/os/MessageQueue$1;->this$0:Landroid/os/MessageQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVIP(Landroid/os/Message;Z)Z
    .locals 5
    .parameter "msg"
    .parameter "debugEnabled"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 551
    iget-wide v1, p1, Landroid/os/Message;->expressNo:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 552
    const/4 v0, 0x1

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    iget-wide v1, p1, Landroid/os/Message;->expressNo:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0
.end method
