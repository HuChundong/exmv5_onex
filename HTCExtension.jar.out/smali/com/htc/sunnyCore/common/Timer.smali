.class public Lcom/htc/sunnyCore/common/Timer;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/common/Timer$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static ObjectRecycler:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunnyCore/common/Timer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private byFrame:Z

.field private frameDuration:I

.field private listener:Lcom/htc/sunnyCore/common/Timer$Listener;

.field private timeMillisDuration:J

.field private timerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "Timer"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/sunnyCore/common/Timer;->ObjectRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    .line 37
    iput v1, p0, Lcom/htc/sunnyCore/common/Timer;->timerId:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/common/Timer;->byFrame:Z

    .line 39
    iput v1, p0, Lcom/htc/sunnyCore/common/Timer;->frameDuration:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunnyCore/common/Timer;->timeMillisDuration:J

    .line 48
    return-void
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/common/Timer;
    .locals 2
    .parameter "host"
    .parameter "name"

    .prologue
    .line 150
    sget-object v1, Lcom/htc/sunnyCore/common/Timer;->ObjectRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/common/Timer;

    .line 151
    .local v0, object:Lcom/htc/sunnyCore/common/Timer;
    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/htc/sunnyCore/common/Timer;

    .end local v0           #object:Lcom/htc/sunnyCore/common/Timer;
    invoke-direct {v0, p0, p1}, Lcom/htc/sunnyCore/common/Timer;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .restart local v0       #object:Lcom/htc/sunnyCore/common/Timer;
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/htc/sunnyCore/common/Timer;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static Recycle(Lcom/htc/sunnyCore/common/Timer;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/Timer;->free()V

    .line 163
    sget-object v0, Lcom/htc/sunnyCore/common/Timer;->ObjectRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    .line 78
    iput v1, p0, Lcom/htc/sunnyCore/common/Timer;->timerId:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/common/Timer;->byFrame:Z

    .line 80
    iput v1, p0, Lcom/htc/sunnyCore/common/Timer;->frameDuration:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunnyCore/common/Timer;->timeMillisDuration:J

    .line 82
    return-void
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    iget v1, p0, Lcom/htc/sunnyCore/common/Timer;->timerId:I

    invoke-interface {v0, v1, p1}, Lcom/htc/sunnyCore/common/Timer$Listener;->onTimerCancelledIRT(ILcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-boolean v1, p0, Lcom/htc/sunnyCore/common/Timer;->byFrame:Z

    if-eqz v1, :cond_1

    .line 94
    iget v1, p0, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameIndex:I

    iget v2, p0, Lcom/htc/sunnyCore/common/Timer;->frameDuration:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    iget v2, p0, Lcom/htc/sunnyCore/common/Timer;->timerId:I

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/common/Timer$Listener;->onTimerIRT(I)V

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget-wide v1, p0, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameTimeMillis:J

    iget-wide v3, p0, Lcom/htc/sunnyCore/common/Timer;->timeMillisDuration:J

    add-long/2addr v1, v3

    cmp-long v1, p2, v1

    if-ltz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    iget v2, p0, Lcom/htc/sunnyCore/common/Timer;->timerId:I

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/common/Timer$Listener;->onTimerIRT(I)V

    goto :goto_0

    .line 113
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemovedIRT()V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/Timer;->clear()V

    .line 133
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/Timer;->free()V

    .line 134
    invoke-static {p0}, Lcom/htc/sunnyCore/common/Timer;->Recycle(Lcom/htc/sunnyCore/common/Timer;)V

    .line 135
    return-void
.end method

.method public setupByFrame(Lcom/htc/sunnyCore/common/Timer$Listener;II)V
    .locals 1
    .parameter "listener"
    .parameter "timerId"
    .parameter "frameDuration"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    .line 56
    iput p2, p0, Lcom/htc/sunnyCore/common/Timer;->timerId:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/common/Timer;->byFrame:Z

    .line 58
    iput p3, p0, Lcom/htc/sunnyCore/common/Timer;->frameDuration:I

    .line 59
    return-void
.end method

.method public setupByTimeMillis(Lcom/htc/sunnyCore/common/Timer$Listener;IJ)V
    .locals 1
    .parameter "listener"
    .parameter "timerId"
    .parameter "timeMillisDuration"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/sunnyCore/common/Timer;->listener:Lcom/htc/sunnyCore/common/Timer$Listener;

    .line 67
    iput p2, p0, Lcom/htc/sunnyCore/common/Timer;->timerId:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/common/Timer;->byFrame:Z

    .line 69
    iput-wide p3, p0, Lcom/htc/sunnyCore/common/Timer;->timeMillisDuration:J

    .line 70
    return-void
.end method
