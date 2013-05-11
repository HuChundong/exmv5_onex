.class Lcom/android/camera/debug/OperationTimeoutController$1;
.super Ljava/lang/Object;
.source "OperationTimeoutController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/debug/OperationTimeoutController;->handleAsyncMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/debug/OperationTimeoutController;

.field final synthetic val$handle:Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/OperationTimeoutController;Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/debug/OperationTimeoutController$1;->this$0:Lcom/android/camera/debug/OperationTimeoutController;

    iput-object p2, p0, Lcom/android/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;

    iget-object v0, v0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->callback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    iget-object v1, p0, Lcom/android/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;

    iget-object v2, p0, Lcom/android/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;

    iget-object v2, v2, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;

    iget-wide v3, v3, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->startTime:J

    iget-object v5, p0, Lcom/android/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;

    iget-wide v5, v5, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->timeout:J

    iget-object v7, p0, Lcom/android/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;

    iget-object v7, v7, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->userState:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;->onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V

    return-void
.end method
