.class final Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/ThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MonitorTarget"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public volatile ignore:Z

.field public volatile pendingAcks:I

.field public final thread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget$1;

    invoke-direct {v0, p0}, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget$1;-><init>(Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;)V

    iput-object v0, p0, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    return-void
.end method
