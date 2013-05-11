.class Lcom/android/camera/component/AutoFocusController$3;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->autoFocus()V
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

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$3;->this$0:Lcom/android/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/android/camera/component/AutoFocusController$3;->val$handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$3;->this$0:Lcom/android/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$3;->val$handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    const/4 v2, 0x1

    #calls: Lcom/android/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/AutoFocusController;->access$000(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V

    return-void
.end method
