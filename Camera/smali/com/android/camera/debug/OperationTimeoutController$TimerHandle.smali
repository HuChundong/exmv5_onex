.class Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;
.super Lcom/android/camera/Handle;
.source "OperationTimeoutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/OperationTimeoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerHandle"
.end annotation


# instance fields
.field public final callback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field public final callbackExecutor:Lcom/android/camera/IAsyncOperationExecutor;

.field public final startTime:J

.field public final timeout:J

.field public final userState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/Handle;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->callback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    iput-object p5, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->callbackExecutor:Lcom/android/camera/IAsyncOperationExecutor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->startTime:J

    iput-wide p2, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->timeout:J

    iput-object p6, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->userState:Ljava/lang/Object;

    return-void
.end method
