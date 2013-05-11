.class Lcom/android/camera/component/RotateDialogManager$5;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RotateDialogManager;->showDialog(Lcom/android/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RotateDialogManager;

.field final synthetic val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RotateDialogManager;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RotateDialogManager$5;->this$0:Lcom/android/camera/component/RotateDialogManager;

    iput-object p2, p0, Lcom/android/camera/component/RotateDialogManager$5;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$5;->this$0:Lcom/android/camera/component/RotateDialogManager;

    #getter for: Lcom/android/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/camera/component/RotateDialogManager;->access$400(Lcom/android/camera/component/RotateDialogManager;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$5;->this$0:Lcom/android/camera/component/RotateDialogManager;

    #setter for: Lcom/android/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/camera/component/RotateDialogManager;->access$402(Lcom/android/camera/component/RotateDialogManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$5;->this$0:Lcom/android/camera/component/RotateDialogManager;

    #setter for: Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;
    invoke-static {v0, v1}, Lcom/android/camera/component/RotateDialogManager;->access$002(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$5;->this$0:Lcom/android/camera/component/RotateDialogManager;

    #setter for: Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0, v1}, Lcom/android/camera/component/RotateDialogManager;->access$202(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/rotate/RotateRelativeLayout;)Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$5;->this$0:Lcom/android/camera/component/RotateDialogManager;

    iget-object v0, v0, Lcom/android/camera/IRotateDialogManager;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/RotateDialogManager$5;->this$0:Lcom/android/camera/component/RotateDialogManager;

    iget-object v1, v1, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$5;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$5;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    return-void
.end method
