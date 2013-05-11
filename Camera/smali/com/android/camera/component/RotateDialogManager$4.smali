.class Lcom/android/camera/component/RotateDialogManager$4;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/android/camera/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RotateDialogManager;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic val$handle:Lcom/android/camera/SessionHandle;

.field final synthetic val$useDefaultKeyListener:Z


# direct methods
.method constructor <init>(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/SessionHandle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RotateDialogManager$4;->this$0:Lcom/android/camera/component/RotateDialogManager;

    iput-object p2, p0, Lcom/android/camera/component/RotateDialogManager$4;->val$handle:Lcom/android/camera/SessionHandle;

    iput-object p3, p0, Lcom/android/camera/component/RotateDialogManager$4;->val$dialog:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/android/camera/component/RotateDialogManager$4;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-boolean p5, p0, Lcom/android/camera/component/RotateDialogManager$4;->val$useDefaultKeyListener:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$4;->this$0:Lcom/android/camera/component/RotateDialogManager;

    iget-object v1, p0, Lcom/android/camera/component/RotateDialogManager$4;->val$handle:Lcom/android/camera/SessionHandle;

    iget-object v2, p0, Lcom/android/camera/component/RotateDialogManager$4;->val$dialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/android/camera/component/RotateDialogManager$4;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-boolean v4, p0, Lcom/android/camera/component/RotateDialogManager$4;->val$useDefaultKeyListener:Z

    #calls: Lcom/android/camera/component/RotateDialogManager;->showDialog(Lcom/android/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/component/RotateDialogManager;->access$300(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)V

    return-void
.end method
