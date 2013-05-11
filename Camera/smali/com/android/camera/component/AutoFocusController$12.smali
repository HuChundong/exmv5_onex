.class Lcom/android/camera/component/AutoFocusController$12;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->startAutoFocus(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;

.field final synthetic val$handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$12;->this$0:Lcom/android/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/android/camera/component/AutoFocusController$12;->val$handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$12;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$800(Lcom/android/camera/component/AutoFocusController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$12;->val$handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    iget-object v0, v0, Lcom/android/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$12;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$800(Lcom/android/camera/component/AutoFocusController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$12;->val$handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    iget-object v1, v1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$12;->this$0:Lcom/android/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$12;->val$handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    #calls: Lcom/android/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V
    invoke-static {v0, v1, p1}, Lcom/android/camera/component/AutoFocusController;->access$000(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V

    return-void
.end method
