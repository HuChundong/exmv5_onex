.class Lcom/android/camera/component/AutoFocusController$2;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/android/camera/Handle;
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

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$2;->this$0:Lcom/android/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/android/camera/component/AutoFocusController$2;->val$handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$2;->this$0:Lcom/android/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$2;->val$handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    #calls: Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/AutoFocusController;->access$100(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    return-void
.end method
