.class final Landroid/database/ContentObserver$NotificationRunnable;
.super Ljava/lang/Object;
.source "ContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRunnable"
.end annotation


# instance fields
.field private final mSelfChange:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;ZLandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 179
    iput-object p1, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-boolean p2, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelfChange:Z

    .line 181
    iput-object p3, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    .line 182
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 187
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v1

    .line 188
    .local v1, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 189
    .local v2, startTime:J
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 190
    .local v0, isUIThread:Z
    :goto_0
    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 191
    const-string v4, "Performance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onChange"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v4, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    iget-boolean v5, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelfChange:Z

    iget-object v6, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 195
    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 196
    const-string v4, "Performance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onChange, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    return-void

    .line 189
    .end local v0           #isUIThread:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
