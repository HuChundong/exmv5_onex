.class Lcom/android/camera/component/ProcessingDialogManager$3;
.super Ljava/lang/Object;
.source "ProcessingDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ProcessingDialogManager;->showProcessingDialog(Ljava/lang/String;I)Lcom/android/camera/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ProcessingDialogManager;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/android/camera/SessionHandle;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ProcessingDialogManager;Lcom/android/camera/SessionHandle;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ProcessingDialogManager$3;->this$0:Lcom/android/camera/component/ProcessingDialogManager;

    iput-object p2, p0, Lcom/android/camera/component/ProcessingDialogManager$3;->val$handle:Lcom/android/camera/SessionHandle;

    iput-object p3, p0, Lcom/android/camera/component/ProcessingDialogManager$3;->val$message:Ljava/lang/String;

    iput p4, p0, Lcom/android/camera/component/ProcessingDialogManager$3;->val$flags:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager$3;->this$0:Lcom/android/camera/component/ProcessingDialogManager;

    iget-object v1, p0, Lcom/android/camera/component/ProcessingDialogManager$3;->val$handle:Lcom/android/camera/SessionHandle;

    iget-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager$3;->val$message:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/component/ProcessingDialogManager$3;->val$flags:I

    #calls: Lcom/android/camera/component/ProcessingDialogManager;->showProcessingDialog(Lcom/android/camera/Handle;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/component/ProcessingDialogManager;->access$300(Lcom/android/camera/component/ProcessingDialogManager;Lcom/android/camera/Handle;Ljava/lang/String;I)V

    return-void
.end method
