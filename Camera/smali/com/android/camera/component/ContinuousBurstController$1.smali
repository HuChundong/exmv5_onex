.class Lcom/android/camera/component/ContinuousBurstController$1;
.super Ljava/lang/Object;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ContinuousBurstController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController$1;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$1;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/android/camera/component/ContinuousBurstController;->onJpegCallbackTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->access$000(Lcom/android/camera/component/ContinuousBurstController;I)V

    return-void
.end method
