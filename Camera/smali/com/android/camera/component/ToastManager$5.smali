.class Lcom/android/camera/component/ToastManager$5;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ToastManager;->showToast(Ljava/lang/String;)Lcom/android/camera/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ToastManager;

.field final synthetic val$handle:Lcom/android/camera/component/ToastManager$ToastHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ToastManager;Lcom/android/camera/component/ToastManager$ToastHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ToastManager$5;->this$0:Lcom/android/camera/component/ToastManager;

    iput-object p2, p0, Lcom/android/camera/component/ToastManager$5;->val$handle:Lcom/android/camera/component/ToastManager$ToastHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ToastManager$5;->this$0:Lcom/android/camera/component/ToastManager;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager$5;->val$handle:Lcom/android/camera/component/ToastManager$ToastHandle;

    #calls: Lcom/android/camera/component/ToastManager;->showToast(Lcom/android/camera/component/ToastManager$ToastHandle;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ToastManager;->access$300(Lcom/android/camera/component/ToastManager;Lcom/android/camera/component/ToastManager$ToastHandle;)V

    return-void
.end method
