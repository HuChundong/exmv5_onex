.class final Lcom/android/camera/debug/ThreadMonitor$EntryRunnable;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/ThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryRunnable"
.end annotation


# instance fields
.field private final m_Monitor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/debug/ThreadMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/ThreadMonitor;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/debug/ThreadMonitor$EntryRunnable;->m_Monitor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/debug/ThreadMonitor$EntryRunnable;->m_Monitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_0

    #calls: Lcom/android/camera/debug/ThreadMonitor;->monitorThreadEntry()V
    invoke-static {v0}, Lcom/android/camera/debug/ThreadMonitor;->access$100(Lcom/android/camera/debug/ThreadMonitor;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "ThreadMonitor"

    const-string v2, "Cannot access ThreadMonitor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
