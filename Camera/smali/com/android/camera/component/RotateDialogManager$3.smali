.class Lcom/android/camera/component/RotateDialogManager$3;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RotateDialogManager;->rotateDialog(Lcom/android/camera/rotate/UIRotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RotateDialogManager;

.field final synthetic val$rotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RotateDialogManager$3;->this$0:Lcom/android/camera/component/RotateDialogManager;

    iput-object p2, p0, Lcom/android/camera/component/RotateDialogManager$3;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOrientation(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$3;->this$0:Lcom/android/camera/component/RotateDialogManager;

    #getter for: Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/RotateDialogManager;->access$200(Lcom/android/camera/component/RotateDialogManager;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$3;->this$0:Lcom/android/camera/component/RotateDialogManager;

    #getter for: Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/RotateDialogManager;->access$200(Lcom/android/camera/component/RotateDialogManager;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/RotateDialogManager$3;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    return-void
.end method
