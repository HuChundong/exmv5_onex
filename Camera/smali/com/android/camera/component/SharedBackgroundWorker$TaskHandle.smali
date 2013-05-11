.class final Lcom/android/camera/component/SharedBackgroundWorker$TaskHandle;
.super Lcom/android/camera/Handle;
.source "SharedBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/SharedBackgroundWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TaskHandle"
.end annotation


# instance fields
.field public final callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "Task"

    invoke-direct {p0, v0}, Lcom/android/camera/Handle;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/component/SharedBackgroundWorker$TaskHandle;->callback:Ljava/lang/Runnable;

    return-void
.end method
