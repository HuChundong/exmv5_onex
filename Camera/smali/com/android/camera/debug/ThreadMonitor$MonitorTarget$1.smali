.class Lcom/android/camera/debug/ThreadMonitor$MonitorTarget$1;
.super Landroid/os/Handler;
.source "ThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget$1;->this$0:Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/debug/ThreadMonitor;

    #calls: Lcom/android/camera/debug/ThreadMonitor;->ack()V
    invoke-static {v0}, Lcom/android/camera/debug/ThreadMonitor;->access$000(Lcom/android/camera/debug/ThreadMonitor;)V

    :cond_0
    return-void
.end method
